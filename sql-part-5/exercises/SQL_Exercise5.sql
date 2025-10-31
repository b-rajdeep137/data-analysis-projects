

CREATE TABLE Sep2025JunkDB.rajdeep_bomjan.chess_class 
    ( ID int IDENTITY (1,1) PRIMARY key,
    First_name VARCHAR(25),
      Last_name VARCHAR(25),
      Age int ,
     Gender VARCHAR(50),
     Email_address VARCHAR (50)
   );

   SELECT *
   FROM Sep2025JunkDB.rajdeep_bomjan.chess_class

INSERT INTO Sep2025JunkDB.rajdeep_bomjan.chess_class ( First_name, Last_name, Age, Gender, Email_address)
VALUES ('Lisa','Hayden','20','Female','lisab20@email.com'),
        ('Nita','Rai','29','Female','nitar21@email.com'),
        ('Ryan','Seacrest','31','Male','ryanw@email.com');

       
UPDATE Sep2025JunkDB.rajdeep_bomjan.chess_class
SET First_name  = 'Nancy' ,  Gender = 'Female'
WHERE 	Id=3;

DELETE From Sep2025JunkDB.rajdeep_bomjan.chess_class 
WHERE First_name ='Nancy'

DROP TABLE Sep2025JunkDB.rajdeep_bomjan.chess_class