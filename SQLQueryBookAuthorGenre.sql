SELECT [b_name], [a_name], [g_name]
FROM [books]
	JOIN [m2m_books_authors]
	ON [books].b_id = [m2m_books_authors].[b_id]
	JOIN [authors]
	ON [m2m_books_authors].[a_id] = [authors].[a_id]
	JOIN [m2m_books_genres]
	ON [books].[b_id] = [m2m_books_genres].[b_id]
	JOIN [genres]
	ON [m2m_books_genres].[g_id] = [genres].[g_id]