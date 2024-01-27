--the identifier of one (any) subscriber who has taken the most books
--from the library

SELECT TOP 1 [sb_subscriber], COUNT([sb_book]) AS [quantity]
FROM [subscriptions]
GROUP BY [sb_subscriber]
ORDER BY [quantity] DESC;

--the identifiers of all subscribers who has taken the most books
--from the library

SELECT [sb_subscriber], [b_quantity]
FROM (
    SELECT [sb_subscriber], COUNT([sb_book]) AS [b_quantity],
    RANK() OVER (ORDER BY COUNT([sb_book]) DESC) AS [rn]
    FROM [subscriptions]
    GROUP BY [sb_subscriber]
) AS [ranked_subscribers]
WHERE [rn] = 1;

--the identifier of the "champion subscriber" who has taken more books
--from the library than any other subscriber.

WITH [ranked]
AS (
    SELECT [sb_subscriber],
    COUNT([sb_book]) AS [b_quantity],
    RANK() OVER (ORDER BY COUNT([sb_book]) DESC) AS [rank]
    FROM [subscriptions]
    GROUP BY [sb_subscriber]
),
[counted]
AS (
    SELECT [rank],
    COUNT(*) AS [competitors]
    FROM [ranked]
    GROUP BY [rank]
)
SELECT [sb_subscriber],
[b_quantity]
FROM [ranked]
JOIN [counted]
ON [ranked].[rank] = [counted].[rank]
WHERE [counted].[rank] = 1;
