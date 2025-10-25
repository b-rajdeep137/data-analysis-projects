



SELECT book.title, author.first_name, author.last_name FROM Sep2025JunkDB.erin_joyce.book AS book
INNER JOIN Sep2025JunkDB.erin_joyce.author  AS author  
ON book.author_id = author.author_id
WHERE death_year IS NULL

Change the schema to your own name


CREATE TABLE Sep2025JunkDB.rajdeep_bomjan.book (
    book_id INT IDENTITY(1,1) PRIMARY KEY,
    author_id INT,
    title VARCHAR(255),
    isbn INT,
    available BIT,
    genre_id INT
);

SELECT *  FROM Sep2025JunkDB.rajdeep_bomjan.book

INSERT INTO Sep2025JunkDB.rajdeep_bomjan.book(author_id, title, isbn, available, genre_id)
VALUES (2, 'A Midsummers Night Dream', 978149413, 1, 23),
        (2, 'Romeo and Juliet', 988535196, 1, 3),
        (1, 'The Golden Compass', 451664226, 1, 1),
         (1, 'The Subtle Knife', 160419390, 1, 1),
         (1, 'The Amber Spyglass', 94387895, 1, 1),
         (3, 'The Alchemist', 464069772, 1, 2),
        (4, 'And Then There Were None', 335973357, 1, 6),
         (5, 'The Joy Luck Club', 990050329, 1, 10),
         (5, 'The Moon Lady', 91720786, 1, 24),
        (6, 'Sense and Sensibility', 156879860, 1, 2),
         (6, 'Northanger Abbey', 951273178, 1, 3),
          (6, 'Pride and Prejudice', 415886839, 1, 3),
         (6, 'Mansfield Park', 188534067, 1, 3),
         (6, 'Emma', 994896202, 1, 3),
         (8, 'The Handmaids Tale', 639239663, 1, 5),
        (8, 'The Testaments', 826875490, 1, 5),
         (9, 'The Parable of the Sower', 283359358, 1, 5),
         (10, 'Little Women', 495409887, 1, 23),
         (11, 'Still Life', 455128657, 1, 6),
         (11, 'A Fatal Grace', 832517012, 1, 6),
        (11, 'The Cruelest Month', 419285319, 1, 6),
         (11, 'The Murder Stone', 656621400, 1, 6),
        (11, 'The Brutal Telling', 144255852, 1, 6),
        (11, 'Bury Your Dead', 208180961, 1, 6),
         (11, 'A Trick of the Light', 93451531, 1, 6),
         (12, 'Midnights Children', 881082293, 1, 10),
        (13, 'Dont Let the Pigeon Drive the Bus!', 18409532, 1, 24),
         (14, 'Beezus and Ramona', 744412630, 1, 24),
        (15, 'Organic Chemistry', 604328803, 1, 25),
         (16, 'I Know Why the Caged Bird Sings', 909947112, 1, 12),
        (17, 'Beloved', 46736233, 1, 10),
        (18, 'Brassbones and Rainbows', 330608463, 1, 26);

CREATE TABLE Sep2025JunkDB.rajdeep_bomjan.author (
    author_id INT IDENTITY(1,1), PRIMARY KEY (author_id),
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    birth_year INT,
    death_year INT
);


SELECT *  FROM Sep2025JunkDB.rajdeep_bomjan.author
INSERT INTO Sep2025JunkDB.rajdeep_bomjan.author(first_name, last_name, birth_year, death_year)
VALUES ('Phillip', 'Pullman', 1946, null),
 ('William', 'Shakespeare', 1564, 1616),
 ('Paulo', 'Coelho', 1947, null),
 ('Agatha', 'Christie', 1890-09-15, 1976-01-12),
 ('Amy', 'Tan', 1952-02-19, null),
 ('Jane', 'Austin', 1775-12-16, 1817-07-18),
 ('Emily', 'Bronte', 1818-07-30, 1848-12-19),
 ('Margaret', 'Atwood', 1939-11-18, null),
 ('Octavia', 'Butler', 1947-06-22, 2006-02-24),
 ('Louisa May', 'Alcott', 1832-11-29, 1888-03-06),
 ('Louise', 'Penny', 1958-07-01, null),
 ('Salman', 'Rushdie', 1947-08-19, null),
 ('Mo', 'Willems', 1968-02-11, null),
 ('Beverly', 'Cleary', 1916-04-12, null),
 ('Peter', 'Vollhardt', 1946-03-07, null),
 ('Maya', 'Angelou', 1928-04-04, 2014-05-28),
 ('Toni', 'Morrison', 1931-02-18, 2019-08-05),
 ('Shirley', 'LeFlore', 1940-03-06, 2019-05-12)


 CREATE TABLE Sep2025JunkDB.rajdeep_bomjan.patron (
    patron_id INT IDENTITY (1,1) PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    loan_id INT
);

SELECT *  FROM Sep2025JunkDB.rajdeep_bomjan.patron

INSERT INTO Sep2025JunkDB.rajdeep_bomjan.patron (first_name, last_name, loan_id)
VALUES ('Jennifer', 'Slayny', NULL),
 ('Susan', 'Traviss', NULL),
  ('Vincent', 'Ritelli', NULL),
 ('Tasia', 'Laybourne', NULL),
  ('Wren', 'Gergler', NULL),
 ('Tory', 'Lees', NULL),
 ('Estelle', 'Di Lorio', NULL),
  ('Dorian', 'Betje', NULL),
  ('Frank', 'Jelk', NULL),
 ('Chris', 'Endon', NULL),
 ('Gillie', 'Fritz', NULL),
 ('Leisha', 'Defty', NULL),
  ('Erika', 'Bompass', NULL),
  ('Gabe', 'Moxstead', NULL),
    ('Blake', 'Teresse', NULL),
  ('Joshua', 'Timmouth', NULL),
 ('Tasha', 'Timmouth', NULL),
  ('Neil', 'Davie', NULL),
  ('Emmeline', 'Pitherick', NULL),
  ('Josiah', 'Staner', NULL),
   ('James', 'Greetham', NULL),
   ('Isaac', 'Barstowk', NULL),
  ('Dean', 'Nelane', NULL),
  ('Carolina', 'Cranmere', NULL),
  ('Champ', 'Lardiner', NULL),
  ('Abbie', 'Quaif', NULL),
  ('Camile', 'Milbourne', NULL),
 ('Quentin', 'Crose', NULL),
  ('Silvano', 'Horlick', NULL),
  ('Phyllis', 'Cicchillo', NULL),
  ('Jerrie', 'Brownhall', NULL),
 ('Ludovika', 'Leist', NULL),
 ('Tara', 'Knatt', NULL),
 ('Kelsie', 'Parkson', NULL),
 ('Jodi', 'Leopard', NULL),
 ('Rosanna', 'Cultcheth', NULL),
 ('Remy', 'Fairpool', NULL),
 ('Megan', 'Blyth', NULL),
 ('Rikki', 'McLernon', NULL),
('Clare', 'Haacker', NULL),
 ('Vincent', 'Chettle', NULL),
 ('Sybil', 'Costanza', NULL),
 ('Jonas', 'Sinclare', NULL),
 ('Claire', 'Bendel', NULL),
 ('Kathleen', 'Welband', NULL),
 ('Kylie', 'Crannage', NULL),
 ('Evelyn', 'Tarajo', NULL),
 ('Oliver', 'Caulson', NULL)

 CREATE TABLE Sep2025JunkDB.rajdeep_bomjan.genre (
    genre_id INT PRIMARY KEY,
    genres VARCHAR(100)
);

SELECT *  FROM Sep2025JunkDB.rajdeep_bomjan.genre

INSERT INTO Sep2025JunkDB.rajdeep_bomjan.genre(genre_id, genres)
VALUES (1, 'Fantasy'),
      (2, 'Adventure'),
       (3, 'Romance'),
       (4, 'Contemporary'),
       (5, 'Dystopian'),
       (6, 'Mystery'),
       (7, 'Horror'),
       (8, 'Thriller'),
       (9, 'Paranormal'),
       (10, 'Historical Fiction'),
       (11, 'Science Ficton'),
         (12, 'Memoir'),
        (13, 'Cooking'),
        (14, 'Art'),
        (15, 'Self-Help'),
        (16, 'Development'),
        (17, 'Motivational'),
        (18, 'Health'),
        (19, 'History'),
        (20, 'Travel'),
        (21, 'Guide'),
       (22, 'Families and Relationships' ),
        (23, 'Humor'),
        (24, 'Childrens'),
        (25, 'Reference'),
        (26, 'Poetry');


CREATE TABLE Sep2025JunkDB.rajdeep_bomjan.loan (
    loan_id INT IDENTITY(1,1) PRIMARY KEY,
    patron_id INT,
    date_out DATE,
    date_in DATE,
    book_id INT
    CONSTRAINT book_id FOREIGN KEY (book_id) REFERENCES Sep2025JunkDB.rajdeep_bomjan.book (book_id)
        ON UPDATE SET NULL
        ON DELETE SET NULL
);

SELECT *  FROM Sep2025JunkDB.rajdeep_bomjan.loan

--Part B1: Warm-up queries: Erin
SELECT genre.genres, book.title, book.ISBN FROM Sep2025JunkDB.rajdeep_bomjan.book AS book
INNER JOIN Sep2025JunkDB.rajdeep_bomjan.genre AS genre
ON genre.genre_id = book.genre_id 
WHERE genres = 'Mystery'

-- Part B1 SL
SELECT b.title, b.isbn 
FROM Sep2025JunkDB.rajdeep_bomjan.book AS b
INNER JOIN Sep2025JunkDB.rajdeep_bomjan.genre AS g 
ON b.genre_id= g.genre_id
WHERE genres LIKE 'Mystery'

--Part B2 SL
SELECT b.title, a.first_name, a.last_name, a.birth_year, a.death_year
FROM Sep2025JunkDB.rajdeep_bomjan.author AS a 
INNER JOIN Sep2025JunkDB.rajdeep_bomjan.book AS b
ON a.author_id = b.author_id
WHERE a.death_year IS NULL;

--Part B2 Erin
SELECT book.title, author.first_name, author.last_name 
FROM Sep2025JunkDB.rajdeep_bomjan.book AS book
INNER JOIN Sep2025JunkDB.rajdeep_bomjan.author  AS author  
ON book.author_id = author.author_id
WHERE death_year IS NULL


--Part C1: Erin
UPDATE Sep2025JunkDB.rajdeep_bomjan.book
SET available = 0
WHERE book_id = 5

--Part C1: SL
SELECT title , available
FROM Sep2025JunkDB.rajdeep_bomjan.book
UPDATE Sep2025JunkDB.rajdeep_bomjan.book
SET available = 0
WHERE book_id = '3'

SELECT *  FROM Sep2025JunkDB.rajdeep_bomjan.loan
SELECT *  FROM Sep2025JunkDB.rajdeep_bomjan.book
SELECT *  FROM Sep2025JunkDB.rajdeep_bomjan.patron


--Part C2: Erin
INSERT INTO Sep2025JunkDB.rajdeep_bomjan.loan (patron_id, date_out, book_id)
VALUES     (2, GETDATE (), 5);

--Part C3: Erin
UPDATE Sep2025JunkDB.rajdeep_bomjan.patron
SET loan_id = 1
WHERE patron_id = 2
-- PART D1 SL
SELECT title , available
FROM Sep2025JunkDB.rajdeep_bomjan.book
UPDATE Sep2025JunkDB.rajdeep_bomjan.book
SET available = 1
WHERE book_id = '3' 
-- PART D2 SL
INSERT into Sep2025JunkDB.rajdeep_bomjan.loan(date_in,patron_id,book_id)
	VALUES (GETDATE(),10,3) 
UPDATE Sep2025JunkDB.rajdeep_bomjan.loan 
	SET date_in = GETDATE()
-- PART D3 SL
UPDATE Sep2025JunkDB.rajdeep_bomjan.patron
SET loan_id = Null
WHERE patron_id ='10'


-- PART D4 SL
SELECT title , available
FROM Sep2025JunkDB.rajdeep_bomjan.book
UPDATE Sep2025JunkDB.rajdeep_bomjan.book
SET available = 0
WHERE book_id = '3' AND book_id= '12' AND book_id='6' and book_id='8' and book_id='20'

INSERT into Sep2025JunkDB.rajdeep_bomjan.loan(date_out,patron_id,book_id)
	VALUES (GETDATE(),10,3),
    (GETDATE(),5,12), 
     (GETDATE(),19,6), 
   (GETDATE(),1,8), 
     (GETDATE(),6,20) 
UPDATE Sep2025JunkDB.rajdeep_bomjan.loan 
	SET date_out = GETDATE()

UPDATE Sep2025JunkDB.rajdeep_bomjan.patron
SET loan_id ='14'
WHERE patron_id =10
UPDATE Sep2025JunkDB.rajdeep_bomjan.patron
SET loan_id ='17'
WHERE patron_id =5
UPDATE Sep2025JunkDB.rajdeep_bomjan.patron
SET loan_id ='14'
WHERE patron_id =10

--Part E
SELECT patron_id, first_name,last_name, loan_id 
INTO #patron_temp_table
FROM Sep2025JunkDB.rajdeep_bomjan.patron

SELECT *
FROM #patron_temp_table

SELECT p.first_name, p.last_name
FROM Sep2025JunkDB.rajdeep_bomjan.patron AS p 
JOIN Sep2025JunkDB.rajdeep_bomjan.loan AS l 
ON p.loan_id=l.loan_id
WHERE l.loan_id = '14'