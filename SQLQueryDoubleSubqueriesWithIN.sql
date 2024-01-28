--a) all books written by Alexander Pushkin and/or Isaac Asimov (either individually or as co-authors);
SELECT	[books].[b_id], [b_name], [a_name]
FROM	[books]
		JOIN [m2m_books_authors]
		ON [books].[b_id] = [m2m_books_authors].[b_id]
		JOIN [authors]
		ON [m2m_books_authors].[a_id] = [authors].[a_id]
WHERE [a_name] in ('Alexander Pushkin', 'Dale Carnegie');

--b) all books written by Dale Carnegie AND Bjarne Stroustrup (as co-authors).

SELECT	[books].[b_name]
FROM	[books]
		JOIN [m2m_books_authors]
		ON [books].[b_id] = [m2m_books_authors].[b_id]
		JOIN [authors]
		ON [m2m_books_authors].[a_id] = [authors].[a_id]
WHERE [a_name] in ('Dale Carnegie', 'Dale Carnegie')
GROUP BY [books].[b_name]

