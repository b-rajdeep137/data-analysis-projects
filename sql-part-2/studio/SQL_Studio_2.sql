/*
SELECT top 1 max(len(title)) AS 'longest title length' , title
FROM BooksDB.dbo.books
GROUP by title
ORDER by max(len(title)) DESC

SELECT TOP 1 book_id, title AS longest_book_title
FROM BooksDB.dbo.books
ORDER BY LEN(Title) DESC;
-- #1 A Jasmine
SELECT MAX(LEN(title))
FROM BooksDB.dbo.books

-- Part 1 B Vasudha
SELECT title, authors
FROM BooksDB.dbo.books
WHERE LEN(title) = 186;



SELECT COUNT( title) AS 'Title with The'
FROM BooksDB.dbo.books
WHERE title LIKE '%the%' OR title like '%The%'

-- #4 correct
SELECT count(DISTINCT authors) AS'Author name starting with Z'
FROM BooksDB.dbo.books
WHERE authors LIKE  'Z%'

SELECT *
FROM BooksDB.dbo.books

*/
-- #3 RB
SELECT COUNT( title) AS 'Title with The'
FROM BooksDB.dbo.books
WHERE title LIKE '%The%' 

-- #5 RB
SELECT count(title), language_code
FROM BooksDB.dbo.books
WHERE  language_code != LEFT('english', 2) and language_code != LEFT('english', 3) and language_code != 'en-US' AND  language_code !='en-UK'
group by language_code;

-- #2A by Erin
SELECT MIN(LEN(authors))
FROM BooksDB.dbo.books
-- 2B Erin
SELECT MIN(authors)
FROM BooksDB.dbo.books
--2B Vasudha
SELECT title, authors
FROM BooksDB.dbo.books
WHERE LEN(authors) = 3;

-- #3 by Erin
SELECT COUNT(title) AS contains_the
FROM BooksDB.dbo.books
WHERE CHARINDEX('the', title) > 0
-- #3 by Nia
SELECT DISTINCT(COUNT(title)) AS contains_the
FROM BooksDB.dbo.books
WHERE (CHARINDEX('the', title)) > 0
-- #7 by Vasudha
-- 7A. language_code field contained NULL values
SELECT 
    title
    ,authors
    ,language_code
    ,CONCAT(title, ' by ', authors, ' in ', language_code, ' language ') AS concat_column
FROM BooksDB.dbo.books
where language_code IS NULL;
-- #8 by Vasudha
-- 8A. The language_code field is still NULL, however the coalesce statement in the new column makes the NULL values appear as 'unknown' which we utilized in the field we named concat_column
SELECT 
    title
    ,authors
    ,language_code
    ,coalesce(language_code,'unkown') AS updated_languagecode
    ,CONCAT(title, ' by ', authors, ' in ', coalesce(language_code,'unkown'), ' language ') AS concat_column
FROM BooksDB.dbo.books;

SELECT count(title), language_code
FROM BooksDB.dbo.books
WHERE  language_code !=SUBSTRING('english', 1,2) and language_code != SUBSTRING('english', 1,3) 
group by language_code
--#4 Erin
SELECT count(DISTINCT authors) AS 'Author name starting with Z'
FROM BooksDB.dbo.books
WHERE LEFT(authors, 1) = 'Z'
-- #5 Vasudha
SELECT COUNT(*) AS NonEnglishBookCount
FROM BooksDB.dbo.books
WHERE LEFT(language_code, 2) <> 'en';
--#6 Vasudha
SELECT COUNT(*) AS NonEnglishBookCount
FROM BooksDB.dbo.books
WHERE SUBSTRING(language_code, 1, 2) <> 'en';

-- #7 Nia
SELECT 
    title
    ,authors
    ,language_code
    ,CONCAT(title, ' by ', authors, ' in ', language_code, ' language ') AS concat_column
FROM BooksDB.dbo.books;
-- #8 Nia
SELECT 
    title
    ,authors
    ,language_code
    ,coalesce(language_code,'unkown') AS updated_languagecode
    ,CONCAT(title, ' by ', authors, ' in ', coalesce(language_code,'unkown'), ' language ') AS concat_column
FROM BooksDB.dbo.books;
--#7 Erin
SELECT 
    title
    ,authors
    ,language_code
    ,CONCAT(title, ' by ', authors, ' in ', language_code, ' language ') AS concat_column
FROM BooksDB.dbo.books
WHERE title IS NULL
  OR authors IS NULL
  OR language_code IS NULL
--#9 RB
SELECT 
    title
    ,authors
    ,language_code
    ,ISNULL(language_code,'unkown') AS updated_languagecode
    ,CONCAT(title, ' by ', authors, ' in ', ISNULL(language_code,'unkown'), ' language ') AS concat_column
FROM BooksDB.dbo.books;


