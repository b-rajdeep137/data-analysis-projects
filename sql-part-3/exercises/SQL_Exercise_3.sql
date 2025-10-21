/*
SELECT TOP 50 b.title, b.average_rating, b.books_count,tr.user_id, tr.book_id
FROM BooksDB.dbo.books AS b
LEFT JOIN BooksDB.dbo.to_read AS tr
ON b.best_book_id = tr.book_id
ORDER BY b.average_rating;

SELECT TOP 50 b.title, b.average_rating, b.books_count,tr.user_id, tr.book_id
FROM BooksDB.dbo.books AS b
LEFT JOIN BooksDB.dbo.to_read AS tr
ON b.best_book_id = tr.book_id
WHERE tr.user_id IS NOT NULL
ORDER BY b.average_rating;

SELECT TOP 300 b.title, b.average_rating, b.books_count, tr.user_id, tr.book_id
FROM BooksDB.dbo.books AS b
RIGHT JOIN BooksDB.dbo.to_read AS tr
ON b.best_book_id = tr.book_id;

SELECT TOP 30 b.title, b.average_rating, b.books_count,tr.user_id, tr.book_id
FROM BooksDB.dbo.books AS b
FULL JOIN BooksDB.dbo.to_read AS tr
ON b.book_id = tr.book_id;

SELECT TOP 30 b.title, b.average_rating, b.books_count,tr.user_id, tr.book_id
FROM BooksDB.dbo.books AS b
FULL JOIN BooksDB.dbo.to_read AS tr
ON b.book_id = tr.book_id
WHERE b.average_rating > 4
ORDER by b.book_id DESC

SELECT TOP 30 b.title, b.average_rating, b.books_count,tr.user_id, tr.book_id
FROM BooksDB.dbo.books AS b
INNER JOIN BooksDB.dbo.to_read AS tr
ON b.book_id = tr.book_id
WHERE b.title IS NOT NULL
ORDER BY tr.book_id;

SELECT TOP 10 b.title,  bt.count,b.best_book_id, bt.goodreads_book_id, bt.tag_id
FROM BooksDB.dbo.books AS b
INNER JOIN BooksDB.dbo.book_tags AS bt
ON b.best_book_id = bt.goodreads_book_id
ORDER BY  bt.count DESC;

SELECT COUNT(bt.tag_id ) as 'different types of tags used'  , b.title
FROM BooksDB.dbo.books AS b
INNER JOIN BooksDB.dbo.book_tags AS bt
ON b.best_book_id = bt.goodreads_book_id
WHERE b.title = 'The Alchemist'
GROUP by  b.title;

SELECT tag_name
FROM BooksDB.dbo.tags
WHERE tag_id = 30574;

SELECT t.tag_id, t.tag_name
FROM BooksDB.dbo.tags AS t
JOIN BooksDB.dbo.book_tags AS bt
ON t.tag_id = bt.tag_id
WHERE t.tag_name LIKE '%chess%';

SELECT b.title, b.book_id,bt.count,  bt.goodreads_book_id, bt.tag_id
From BooksDB.dbo.books as b 
JOIN BooksDB.dbo.book_tags as bt
ON b.book_id= bt.goodreads_book_id
WHERE bt.tag_id = 6709
ORDER BY bt.count DESC;
*/

SELECT top 10 COUNT(tr.user_id) AS 'number of user', b.title
From BooksDB.dbo.books as b 
LEFT JOIN BooksDB.dbo.to_read as tr 
ON b.book_id=tr.book_id 
GROUP BY b.title
ORDER BY 'number of user' DESC;