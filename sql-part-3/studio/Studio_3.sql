
/*
SELECT TOP 10 t.tag_name, bt.tag_id, SUM(bt.count) AS total
FROM BooksDB.dbo.book_tags AS bt
INNER JOIN BooksDB.dbo.tags AS t 
ON bt.tag_id = t.tag_id
GROUP BY t.tag_name, bt.tag_id
HAVING t.tag_name LIKE '%female%'
ORDER BY total DESC

SELECT TOP 10 b.authors, b.title, b.average_rating, bt.tag_id
FROM  BooksDB.dbo. books AS b 
INNER JOIN  BooksDB.dbo.book_tags AS bt 
ON b.best_book_id = bt.goodreads_book_id
WHERE tag_id = 11643 OR tag_id = 11644
ORDER BY average_rating DESC

SELECT TOP 10 b.authors, b.title, b.average_rating, bt.tag_id
FROM  BooksDB.dbo. books AS b 
INNER JOIN  BooksDB.dbo.book_tags AS bt 
ON b.best_book_id = bt.goodreads_book_id
WHERE tag_id = 11643 OR tag_id = 11644
ORDER BY average_rating DESC

-- #1 Erin
SELECT TOP 10 t.tag_name, bt.tag_id, SUM(bt.count) AS total, b.authors
FROM BooksDB.dbo.book_tags AS bt
INNER JOIN BooksDB.dbo.tags AS t 
ON bt.tag_id = t.tag_id
LEFT JOIN BooksDB.dbo.books AS b  
ON bt.goodreads_book_id = b.book_id 
GROUP BY t.tag_name, bt.tag_id, b.authors
HAVING t.tag_name LIKE '%female%'
ORDER BY total DESC

-- #2 Erin
SELECT TOP 10 t.tag_name, bt.tag_id, SUM(bt.count) AS total, b.title
FROM BooksDB.dbo.book_tags AS bt
INNER JOIN BooksDB.dbo.tags AS t 
ON bt.tag_id = t.tag_id
LEFT JOIN BooksDB.dbo.books AS b  
ON bt.goodreads_book_id = b.book_id 
GROUP BY t.tag_name, bt.tag_id, b.title
HAVING t.tag_name LIKE '%spring'
ORDER BY total DESC
*/

SELECT  count(t.tag_name) as "total count",t.tag_name, bt.tag_id
FROM BooksDB.dbo.book_tags AS bt
INNER JOIN BooksDB.dbo.tags AS t 
ON bt.tag_id = t.tag_id
GROUP BY t.tag_name, bt.tag_id
HAVING t.tag_name LIKE '%halloween%'
ORDER BY count(t.tag_name) DESC

SELECT TOP 10  t.tag_name, bt.tag_id, SUM(bt.count) AS total
FROM BooksDB.dbo.book_tags AS bt
INNER JOIN BooksDB.dbo.tags AS t 
ON bt.tag_id = t.tag_id
GROUP BY t.tag_name, bt.tag_id
HAVING t.tag_name LIKE '%smile%'
ORDER BY total DESC
