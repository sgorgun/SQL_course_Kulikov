--a) all authors, who has written more than one book
SELECT  [authors].[a_id],
		[a_name],
		(COUNT([b_id])) AS [books_quantity]
FROM	[authors]
		JOIN [m2m_books_authors]
		ON [authors].[a_id] = [m2m_books_authors].[a_id]
GROUP BY[authors].[a_id], [a_name]
HAVING	(COUNT([b_id])) > 1;


--b) all books that are written in more than one genre
SELECT  [genres].[g_id],
		[g_name],
		(COUNT([b_id])) AS [books_quantity]
FROM	[genres]
		JOIN [m2m_books_genres]
		ON [genres].[g_id] = [m2m_books_genres].[g_id]
GROUP BY[genres].[g_id], [g_name]
HAVING	(COUNT([b_id])) > 1;

--c) all subscribers having more than one book
SELECT	[subscribers].[s_id],
		[s_name],
		(COUNT([sb_book])) AS [books_quantity]
FROM	[subscribers]
		JOIN [subscriptions]
		ON [subscribers].[s_id] = [subscriptions].[sb_subscriber]
GROUP BY [subscribers].[s_id], [subscribers].[s_name]
HAVING	(COUNT([sb_book])) > 1;


--d) how many copies of each book is taken by subscribers
SELECT	[books].[b_name],
		(COUNT([subscriptions].[sb_book])) AS [books_quantity]
FROM	[subscriptions]
		JOIN [books]
		ON [subscriptions].[sb_book] = [books].[b_id]
WHERE   [subscriptions].[sb_is_active] = 'Y'
GROUP BY [books].[b_name];


--e) all authors along with total copies of their books
SELECT	DISTINCT [authors].[a_id],
		[a_name],
		[b_quantity] AS [books_quantity]
FROM	[authors]
		JOIN [m2m_books_authors]
		ON [authors].[a_id] = [m2m_books_authors].[a_id]
		JOIN [books]
		ON [m2m_books_authors].b_id = [books].[b_id]
GROUP BY [authors].[a_id], [a_name], [b_quantity]
		

--f) all authors along with count their books (just books, not copies)


--g) all subscribers with overdue subscriptions (along with books copies count)