/*
--1
SELECT TOP 100 
    book_id 
    ,authors 
    ,title 
    ,average_rating AS rating
FROM BooksDB.dbo.books
ORDER BY rating DESC;

SELECT TOP 100     book_id     ,authors     ,title     ,average_rating AS rating
FROM BooksDB.dbo.books
ORDER BY rating DESC;


SELECT TOP 100 book_id 
FROM BooksDB.dbo.books
ORDER BY ratings

SELECT * 
FROM BooksDB.dbo.books
--2 Wrong one
SELECT average_rating, COUNT (*) AS COUNT
FROM BooksDB.dbo.books
GROUP BY average_rating
ORDER BY average_rating ASC

-- #6
SELECT COUNT(*)
FROM BooksDB.dbo.books
WHERE title  <> 'happy';

SELECT COUNT(*)
FROM BooksDB.dbo.books
WHERE title  <> '%happy%';

--2 by ERin
SELECT MIN(average_rating) AS least_popular, title 
FROM BooksDB.dbo.books
GROUP BY title 
ORDER BY MIN(average_rating) ASC;




--3 Wrong One
SELECT MAX(average_rating) AS MOST_popular, book_tags
FROM BooksDB.dbo.books
GROUP BY book_tags 
ORDER BY MAX(average_rating) DESC;
--3 this gives book title not tag
SELECT MAX(average_rating) AS MOST_popular, title
FROM BooksDB.dbo.books
GROUP BY title 
ORDER BY MAX(average_rating) DESC;


--8
SELECT COUNT(*)
FROM BooksDB.dbo.books
WHERE authors BETWEEN 'rock' AND 'roll';
-- Wrong #5
SELECT COUNT(original_publication_year)
FROM BooksDB.dbo.books
WHERE original_publication_year > '2000-01-01' AND original_publication_year < '2010-01-01'
GROUP BY original_publication_year
ORDER BY original_publication_year;
--5
SELECT COUNT(original_publication_year)
FROM BooksDB.dbo.books
WHERE original_publication_year > '2000' AND original_publication_year <= '2010';
--6
SELECT COUNT(title)
FROM BooksDB.dbo.books
WHERE title LIKE '%happy%'
--3
SELECT tag_id, COUNT
FROM BooksDb.dbo.book_tags
ORDER BY count DESC
--4
SELECT tag_name
       ,tag_id
FROM BooksDB.dbo.tags
WHERE tag_id = '30574'
--7

select original_title AS 'Bill Watterson Books'
from BooksDB.dbo.books
where authors = 'Bill Watterson'
ORDER BY average_rating DESC;
SELECT original_title AS 'Brandon Sanderson Books'
FROM BooksDB.dbo.books
WHERE authors = 'Brandon Sanderson'
ORDER BY average_rating DESC;
SELECT original_title AS 'J.K. Rowling Books'
FROM BooksDB.dbo.books
WHERE authors = 'J.K. Rowling'
ORDER BY average_rating DESC;

SELECT COUNT(original_publication_year)
FROM BooksDB.dbo.books
WHERE original_publication_year = '1980';

SELECT TOP 10
    book_id 
    ,authors 
    ,title 
    ,average_rating AS rating
FROM BooksDB.dbo.books
WHERE original_publication_year = '1980'
ORDER BY rating DESC;


SELECT TOP 1 title, authors
FROM BooksDB.dbo.books
ORDER BY LEN(title) DESC;

SELECT *
FROM BooksDB.dbo.books

SELECT TOP 1 title AS 'least popular book' FROM BooksDB.dbo.books
ORDER BY average_rating ASC

SELECT top 1 tag_id  AS 'most popular tag' 
FROM BooksDB.dbo.book_tags
ORDER by count DESC

SELECT TOP 1 book_id, title
FROM BooksDB.dbo.books
ORDER BY LEN(Title) DESC;


SELECT TOP 1 book_id, title AS longest_book_title
FROM BooksDB.dbo.books
ORDER BY LEN(Title) DESC;
*/