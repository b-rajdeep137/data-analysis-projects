--RB #1
SELECT b.authors, b.title 
FROM BooksDB.dbo.books AS b
WHERE authors IN
  ( SELECT b.authors
     WHERE authors LIKE '%, %');


--RB #2
SELECT b.title 
FROM BooksDB.dbo.books AS b
INNER JOIN BooksDB.dbo.book_tags AS bt
ON b.best_book_id = bt.goodreads_book_id
UNION
SELECT  t.tag_name
FROM BooksDB.dbo.tags AS t
INNER JOIN BooksDB.dbo.book_tags AS bt
ON bt.tag_id = t.tag_id
WHERE t.tag_name LIKE '%Meditation%';

-- Nathan #2
 SELECT b.title
FROM BooksDB.dbo.books as b
WHERE b.book_id IN 
    (
        SELECT b_tags.goodreads_book_id
        FROM BooksDB.dbo.book_tags as b_tags
        WHERE b_tags.tag_id IN
        (
            SELECT tag.tag_id
            FROM BooksDB.dbo.tags as tag
            WHERE tag.tag_name LIKE '%Meditation%')
        );

--RB #3 
SELECT title, original_title, average_rating
    FROM BooksDB.dbo.books 
    WHERE average_rating >= 4.2 

    INTERSECT

    SELECT title, original_title, average_rating 
    FROM BooksDB.dbo.books 
    WHERE original_title IS NOT NULL AND original_title = title
    ORDER by average_rating DESC;

SELECT *
FROM BooksDB.dbo.books  

--RB #4
SELECT b.title, b.original_publication_year, b.average_rating
FROM BooksDB.dbo.books AS b 
JOIN BooksDB.dbo.ratings AS r 
ON b.book_id= r.book_id
WHERE b.average_rating < 
      (SELECT avg(r.rating)
       FROM BooksDB.dbo.ratings AS r
       )  
ORDER BY b.original_publication_year DESC;

