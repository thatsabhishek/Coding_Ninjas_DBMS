Problem Statement:
Consider the tables given below and formulate a SQL query to create these tables with all the constraints.

1. The table books contain features like id, title, author, published_date, isbn. The id should be declared as PRIMARY KEY. The isbn should be declared UNIQUE. The attributes title, author and publish_date should be declared NOT NULL.

   Attribute       |  Data Type
    id             |  INT (Primary Key) 
    title          |  VARCHAR (100)
    author         |  VARCHAR (100)
    published_date |  TIMESTAMP
    isbn           |  CHAR 

2. The Table reviews contains features like id, book_id, reviewer_name, content, rating, published_date . The id should be declared PRIMARY KEY . The bookid should be declared FOREIGN KEY referred to id (table books). The attribute bookid should be declared NOT NULL .

    Attribute       |  Data Type
     id             |  INT (Primary Key)
     book_id        |  INT 
     reviewer_name  |  VARCHAR (225)
     content        |  VARCHAR (225)
     rating         |  INT
     published_date |  TIMESTAMP

Print the Table Schema for each table created as follows:

SELECT table_name, column_name, data_type
FROM information_schema.columns
WHERE table_name = 'your_table';
Note - 1: Replace 'your_table' with the actual table name used in the query.
Note - 2: First print table schema books and then reviews. Position the above command just after the CREATE TABLE command for each table.

Solution:
CREATE TABLE books(
id INT PRIMARY KEY,
title VARCHAR(50) NOT NULL,
author VARCHAR(25) NOT NULL,
published_date TIMESTAMP NOT NULL,
isbn CHAR(12) UNIQUE);

SELECT table_name, column_name, data_type
FROM information_schema.columns
WHERE table_name = 'books';

CREATE TABLE reviews(
id INT PRIMARY KEY ,
book_id INT NOT NULL,
reviewer_name VARCHAR(225),
content VARCHAR(225),
rating INT,
published_date TIMESTAMP,
FOREIGN KEY(book_id) REFERENCES books(id));

SELECT table_name, column_name, data_type
FROM information_schema.columns
WHERE table_name = 'reviews';

Output:
CREATE TABLE
 table_name |  column_name   |          data_type          
------------+----------------+-----------------------------
 books      | id             | integer
 books      | title          | character varying
 books      | author         | character varying
 books      | published_date | timestamp without time zone
 books      | isbn           | character

CREATE TABLE
 table_name |  column_name   |          data_type          
------------+----------------+-----------------------------
 reviews    | id             | integer
 reviews    | book_id        | integer
 reviews    | reviewer_name  | character varying
 reviews    | content        | character varying
 reviews    | rating         | integer
 reviews    | published_date | timestamp without time zone