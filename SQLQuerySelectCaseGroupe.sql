-- average number of copies of books registered in the library;
SELECT AVG( CAST([b_quantity] AS FLOAT)) AS [avg]
FROM [books]

-- average number of days a subscriber is registered in the library
--(the registration period starts with the first subscription date and ends with the current date)
SELECT AVG(CAST (DATEDIFF(day, [sb_start], CONVERT(date, GETDATE()))AS FLOAT)) AS [average_days]
FROM [subscriptions]

--how many books was taken by subscriber for each year
SELECT		YEAR([sb_start]) AS [year],
			COUNT ([sb_id])	 AS [books_taken]
FROM		[subscriptions]
GROUP BY	YEAR([sb_start])
ORDER BY	[year]


--how many subscriber was take books for each year
SELECT		YEAR([sb_start])					AS [year],
			COUNT (DISTINCT [sb_subscriber])	AS [subscriber]
FROM		[subscriptions]
GROUP BY	YEAR([sb_start])
ORDER BY	[year]

--how many books were return and are not return to the library
SELECT	(CASE
		WHEN [sb_is_active] = 'Y'
		THEN 'Not returned'
		ELSE 'Returned'
		END)			AS [status],
		COUNT ([sb_id]) AS [books]
FROM	[subscriptions]
GROUP BY (CASE
		WHEN [sb_is_active] = 'Y'
		THEN 'Not returned'
		ELSE 'Returned'
		END)
ORDER BY [status] DESC
		
--Rewrite solution 3 so that (while counting returned and not returned books) the DBMS operates the initial values of the sb_is_active field (i.e., 'Y' and 'N'), and the transformation to "Returned" and "Not returned" occurs after the count.
WITH counts AS (
    SELECT
        [sb_is_active] AS [status],
        COUNT([sb_id]) AS [books]
    FROM
        [subscriptions]
    GROUP BY
        [sb_is_active]
)
SELECT
    CASE
        WHEN [status] = 'Y'
		THEN 'Not returned'
        ELSE 'Returned'
    END AS [status], [books]
FROM
    counts