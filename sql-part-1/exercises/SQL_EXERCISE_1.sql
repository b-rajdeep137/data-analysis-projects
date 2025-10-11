/* -- #1 correct
SELECT TOP 1000 * 
FROM BooksDB.dbo.books;

SELECT *
FROM BooksDB.dbo.books;

-- #2 correct
SELECT COUNT (title) AS 'Titles'
FROM BooksDB.dbo.books;
-- #3 correct
SELECT COUNT (original_publication_year) AS 'Books older than 1800 AD'
FROM BooksDB.dbo.books
WHERE original_publication_year < 1800;
-- #4 correct
SELECT DISTINCT authors
FROM BooksDB.dbo.books;
#5 correct
SELECT COUNT(language_code)
FROM BooksDB.dbo.books
WHERE language_code LIKE 'en-%' OR language_code LIKE 'eng%';

-- #6 correct
SELECT COUNT(original_title)
FROM BooksDB.dbo.books
WHERE original_publication_year BETWEEN 1914 AND 1921;

SELECT COUNT(DISTINCT original_title)
FROM BooksDB.dbo.books
WHERE original_publication_year BETWEEN 1914 AND 1921;



SELECT *
FROM BooksDB.dbo.book_tags

-- Book_tags table #1 correct
SELECT  TOP 1000 goodreads_book_id,tag_id
FROM BooksDB.dbo.book_tags
ORDER BY tag_id DESC;
-- Book_tags table #2 correct
SELECT tag_id, COUNT(goodreads_book_id) 
FROM BooksDB.dbo.book_tags
GROUP BY  tag_id;
-- Book_tags table #3 correct
SELECT tag_id, COUNT(goodreads_book_id) AS 'Counts by tag id'
FROM BooksDB.dbo.book_tags
GROUP BY  tag_id;

SELECT *
FROM BooksDB.dbo.ratings
-- Rating table #1 correct
SELECT TOP 1000 book_id, user_id, rating 
FROM BooksDB.dbo.ratings
ORDER BY rating  DESC;
-- Ratings table #2 correct
SELECT COUNT(DISTINCT user_id) AS 'Number of users with rating less than 2'
FROM BooksDB.dbo.ratings
WHERE rating <2;

SELECT COUNT(DISTINCT book_id) AS ' Sum of books with rating 4 or higher'
FROM BooksDB.dbo.ratings
WHERE rating >=3;

SELECT COUNT(DISTINCT book_id) AS 'Total Books'
FROM BooksDB.dbo.ratings

SELECT DISTINCT book_id, rating, user_id
FROM BooksDB.dbo.ratings
ORDER BY book_id




--Ratings table #3 correct ?
SELECT COUNT(DISTINCT book_id) AS ' books with rating 4 '
FROM BooksDB.dbo.ratings
WHERE rating  >=4;

SELECT COUNT(book_id) AS ' books with rating 4 '
FROM BooksDB.dbo.ratings
WHERE rating  =1;


SELECT *
FROM BooksDB.dbo.tags

-- tags table #1 correct
SELECT DISTINCT (tag_name)
FROM BooksDB.dbo.tags
WHERE tag_name LIKE 'mystery%' or tag_name LIKE '%mystery%' or tag_name LIKE '%mystery';

SELECT * 
FROM BooksDB.dbo.tags
 WHERE tag_name < 'd' AND tag_name >= 'c';

*/ 
SELECT *
FROM BooksDB.dbo.to_read

-- to_read table #1 correct
SELECT user_id,  COUNT(user_id) AS 'Total Books To Read'
FROM BooksDB.dbo.to_read
GROUP BY user_id 
ORDER BY [user_id] ASC;

-- to_read table #2 correct
SELECT user_id,  COUNT(user_id) AS 'Total Books To Read'
FROM BooksDB.dbo.to_read
GROUP BY [user_id] 
ORDER BY 'Total Books To Read' DESC;



