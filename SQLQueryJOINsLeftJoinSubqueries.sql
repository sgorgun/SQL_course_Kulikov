--list of readers who have borrowed a book from the library at least once
---with JOINs
SELECT DISTINCT	[s_id], [s_name]
FROM			[subscribers]
				JOIN [subscriptions]
				ON [s_id] = [sb_subscriber];

---witout JOIN
SELECT	[s_id], [s_name]
FROM	[subscribers]
WHERE	[s_id] IN	(SELECT [sb_subscriber]
					FROM [subscriptions]);

--subscriber who had never taking a book from the library
---with JOINs
SELECT	[s_id], [s_name]
FROM	[subscribers]
		LEFT JOIN [subscriptions]
		ON [s_id] = [sb_subscriber]
WHERE	[sb_subscriber] is NULL;

---without Joins
SELECT	[s_id], [s_name]
FROM	[subscribers]
WHERE	[s_id] NOT IN	(SELECT DISTINCT [sb_subscriber]
						FROM [subscriptions]);

--all books ever taken from the library (use JOIN)
SELECT	DISTINCT [b_id], [b_name]
FROM	[subscriptions]
		JOIN [books]
		ON [b_id] = [sb_book];

--all books ever taken from the library (do not use JOIN)
SELECT	[b_id], [b_name]
FROM	[books]
WHERE	[b_id] IN	(SELECT [sb_book] 
					FROM [subscriptions]);

--all books never taken from the library (use JOIN)

SELECT	[b_id], [b_name]
FROM	[subscriptions]
		RIGHT JOIN [books]
		ON [b_id] = [sb_book]
WHERE	[sb_book] IS NULL;

--all books never taken from the library (do not use JOIN)
SELECT	[b_id], [b_name]
FROM	[books]
WHERE	[b_id] NOT IN	(SELECT [sb_book]
						FROM [subscriptions]);

--Show all subscribers who doesn't have a book now(use JOIN).
SELECT	[s_id], [s_name]
FROM	[subscribers]
		LEFT OUTER JOIN [subscriptions]
		ON [s_id] = [sb_subscriber]
GROUP BY [s_id], [s_name]
HAVING COUNT (CASE
				WHEN [sb_is_active] = 'Y'
				THEN [sb_is_active]
				ELSE NULL
				END) = 0;

--Show all subscribers who doesn't have a book now(do not use JOIN).
SELECT	[s_id], [s_name]
FROM	[subscribers]
WHERE	[s_id] NOT IN	(SELECT DISTINCT [sb_subscriber]
						FROM [subscriptions]
						WHERE [sb_is_active] = 'Y');

--Write an SQL query to show all such books that not a single copy of which is now taken by any subscriber.
SELECT	[b_id], [b_name]
FROM	[books]
WHERE	[b_id] NOT IN	(SELECT [sb_book]
						FROM [subscriptions]
						WHERE [sb_is_active] = 'Y');