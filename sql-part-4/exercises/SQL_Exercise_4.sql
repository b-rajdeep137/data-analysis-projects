SELECT r.book_id,
COUNT(*) AS "number of users"
FROM BooksDB.dbo.ratings as r
WHERE r.rating > 
    (SELECT  b.average_rating
    FROM BooksDB.dbo.books as b 
    WHERE b.book_id =r.book_id)
GROUP BY r.book_id;

SELECT book_id 
FROM BooksDB.dbo.books
WHERE ratings_5>1000
UNION 
SELECT book_id 
FROM BooksDB.dbo.books
WHERE ratings_1>1000

SELECT book_id 
FROM BooksDB.dbo.books
WHERE ratings_5>1000
INTERSECT 
SELECT book_id 
FROM BooksDB.dbo.books
WHERE ratings_1>1000;

SELECT book_id
FROM
(SELECT book_id 
FROM BooksDB.dbo.books
WHERE language_code ='en-US' 
EXCEPT
SELECT book_id 
FROM BooksDB.dbo.books
WHERE language_code ='en-GB' ) as b;

SELECT t.tag_id, t.tag_name
FROM BooksDB.dbo.tags AS t 
WHERE t.tag_id IN
    (SELECT  DISTINCT (bt.tag_id)
    FROM BooksDB.dbo.book_tags AS bt 
    WHERE count > 100000);
     