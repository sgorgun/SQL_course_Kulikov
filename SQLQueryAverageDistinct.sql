-- averagege copies of books
SELECT AVG(CAST([book_per_subscriber]AS FLOAT)) AS [avg_books]
FROM	(SELECT COUNT([sb_book]) AS [book_per_subscriber] 
		FROM [subscriptions]
		WHERE [sb_is_active] = 'Y'
		GROUP BY [sb_subscriber]) AS [count_subquery]

-- averagege of books
SELECT AVG(CAST([book_per_subscriber]AS FLOAT)) AS [avg_books]
FROM	(SELECT COUNT(DISTINCT [sb_book]) AS [book_per_subscriber] 
		FROM [subscriptions]
		WHERE [sb_is_active] = 'Y'
		GROUP BY [sb_subscriber]) AS [count_subquery]

---
SELECT AVG(CAST (DATEDIFF(day, [sb_start], [sb_finish]) AS FLOAT)) AS [avg_days]
FROM [subscriptions]
WHERE [sb_is_active] = 'N'

---
