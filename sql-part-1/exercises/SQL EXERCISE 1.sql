/*
SELECT TOP 1000 * 
FROM BooksDB.dbo.books;

SELECT COUNT (title) AS 'Titles'
FROM BooksDB.dbo.books;

SELECT COUNT (original_publication_year) AS 'Books older than 1800 AD'
FROM BooksDB.dbo.books
WHERE original_publication_year < 1800;

SELECT DISTINCT authors
FROM BooksDB.dbo.books;

SELECT COUNT(language_code)
FROM BooksDB.dbo.books
WHERE language_code LIKE 'en-%' or language_code LIKE 'eng%';
*/
SELECT COUNT(original_title)
FROM BooksDB.dbo.books
WHERE original_publication_year BETWEEN 1914 AND 1921;

SELECT  TOP 1000 goodreads_book_id,tag_id
FROM BooksDB.dbo.book_tags
ORDER BY tag_id DESC;
