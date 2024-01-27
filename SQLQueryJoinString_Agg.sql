SELECT	[b_name],
		[a_name],
		[g_name]
FROM	[books]
		JOIN [m2m_books_authors]
		ON [books].[b_id] = [m2m_books_authors].[b_id]
		JOIN [authors]
		ON [m2m_books_authors].[a_id] = [authors].[a_id]
		JOIN [m2m_books_genres]
		ON [books].[b_id] =[m2m_books_genres].[b_id]
		JOIN [genres]
		ON [m2m_books_genres].[g_id] = [genres].[g_id];

-- information about all subscribers
SELECT	[b_name],
		[a_name],
		[g_name],
		[sb_is_active],
		[sb_start],
		[sb_finish],
		[s_name]
FROM	[books]
		JOIN [m2m_books_authors]
		ON [books].[b_id] = [m2m_books_authors].[b_id]
		JOIN [authors]
		ON [m2m_books_authors].[a_id] = [authors].[a_id]
		JOIN [m2m_books_genres]
		ON [books].[b_id] =[m2m_books_genres].[b_id]
		JOIN [genres]
		ON [m2m_books_genres].[g_id] = [genres].[g_id]
		JOIN [subscriptions]
		ON [books].[b_id] = [subscriptions].[sb_id]
		JOIN [subscribers]
		ON [subscriptions].[sb_id] = [subscribers].[s_id];

--books written by more than one author
SELECT		[b_name], COUNT([a_name]) AS [a_quantity]
FROM		[books]
			JOIN [m2m_books_authors]
			ON [books].[b_id] = [m2m_books_authors].[b_id]
			JOIN [authors]
			ON [m2m_books_authors].[a_id] = [authors].[a_id]
GROUP BY	[b_name]
HAVING		COUNT([a_name]) > 1;


--Show all books along with their authors in one string
SELECT	[b_name] AS [book],
		STRING_AGG ([a_name], ', ') WITHIN GROUP (ORDER BY [a_name] ASC) AS [autor(s)]
FROM	[books]
		JOIN [m2m_books_authors]
		ON [books].[b_id] = [m2m_books_authors].[b_id]
		JOIN [authors]
		ON [m2m_books_authors].[a_id] = [authors].[a_id]
		GROUP BY [books].[b_id],[books].[b_name]
		ORDER BY [books].[b_name];

--Show all books along with their authors and genres without duplicates
WITH	[books_names_and_authors] AS
(
SELECT	[books].[b_id],
		[books].[b_name]
		AS [book],
		STRING_AGG ([a_name], ', ') WITHIN GROUP (ORDER BY [a_name] ASC)
		AS [author(s)]
FROM	[books]
		JOIN [m2m_books_authors]
		ON [books].[b_id] = [m2m_books_authors].[b_id]
		JOIN [authors]
		ON [m2m_books_authors].[a_id] = [authors].[a_id]
GROUP BY[books].[b_id], [books].[b_name]
),
[books_genres] AS
(
SELECT	[books].[b_id],
		STRING_AGG ([g_name], ', ') WITHIN GROUP (ORDER BY [g_name] ASC)
		AS [genre(s)]
FROM	[books]
		JOIN [m2m_books_genres]
		ON [books].[b_id] = [m2m_books_genres].[b_id]
		JOIN [genres]
		ON [m2m_books_genres].[g_id] = [genres].[g_id]
GROUP BY[books].[b_id]
)
SELECT	[books_names_and_authors].[book],
		[books_names_and_authors].[author(s)],
		[books_genres].[genre(s)]
FROM	[books_names_and_authors]
		JOIN [books_genres]
		ON [books_names_and_authors].[b_id] = [books_genres].[b_id];

--all books along with their genres (books’ titles duplication is not allowed);
SELECT	[b_name] AS [book],
		STRING_AGG ([g_name], ', ')  WITHIN GROUP (ORDER BY [g_name] ASC) AS [genre(s)]
FROM	[books]
		JOIN [m2m_books_genres]
		ON [books].[b_id] = [m2m_books_genres].[b_id]
		JOIN [genres]
		ON [m2m_books_genres].[g_id] = [genres].[g_id]
GROUP BY[books].[b_id], [books].[b_name];

--all authors along with their  (authors’ names and/or books’ titles duplication is not allowed)
WITH [books_authors] AS
(
SELECT	[books].[b_id],
		[authors].[a_name] AS [author(s)]
FROM	[books]
		JOIN [m2m_books_authors]
		ON [books].[b_id] = [m2m_books_authors].[b_id]
		JOIN [authors]
		ON [m2m_books_authors].[a_id] = [authors].[a_id]
GROUP BY[books].[b_id], [authors].[a_name]
),
[books_and_genres] AS
(
SELECT	[books].[b_id],
		[books].[b_name] AS [books_name],
		STRING_AGG ([g_name], ', ') WITHIN GROUP (ORDER BY [g_name] ASC) AS [genre(s)]
FROM 	[books]
		JOIN [m2m_books_genres]
		ON [books].[b_id] = [m2m_books_genres].[b_id]
		JOIN [genres]
		ON [m2m_books_genres].[g_id] = [genres].[g_id]
GROUP BY[books].[b_id], [books].[b_name]
)
SELECT	[books_authors].[author(s)],
		[books_and_genres].[books_name],
		[books_and_genres].[genre(s)]
FROM	[books_and_genres]
		JOIN [books_authors]
		ON [books_authors].[b_id] = [books_and_genres].[b_id]