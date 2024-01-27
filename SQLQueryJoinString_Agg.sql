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
		ON [m2m_books_genres].[g_id] = [genres].[g_id]

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
		ON [subscriptions].[sb_id] = [subscribers].[s_id]

--books written by more than one author
SELECT		[b_name], COUNT([a_name]) AS [a_quantity]
FROM		[books]
			JOIN [m2m_books_authors]
			ON [books].[b_id] = [m2m_books_authors].[b_id]
			JOIN [authors]
			ON [m2m_books_authors].[a_id] = [authors].[a_id]
GROUP BY	[b_name]
HAVING		COUNT([a_name]) > 1



