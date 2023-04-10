Problem Statement:
Consider the tables given below:

1. The table users contains features like id, full_name, enabled, last_login. The attribute id here will be the primary key.
Attribute List(s):

  Attribute   |  Data Type
  id          |  INT (Primary Key)
  full_name   |  VARCHAR
  enabled     |  CHAR
  last_login  |  DATE

2.The table addresses contains features like user_id, street, city, state. The user_id here will be the primary key as well as foreign key that refers to id(users table). The attributes street, city and state should be declared NOT NULL.
Attribute List(s):

  Attribute   |  Data Type
  user_id     |  INT (Primary Key)
  street      |  VARCHAR 
  city        |  VARCHAR 
  state       |  VARCHAR 

Formulate a SQL query to create these tables with all the constraints given along with the table. Also, add constraints to correlate these tables.

Print the Table Schema for each table created as follows:

SELECT table_name, column_name, data_type
FROM information_schema.columns
WHERE table_name = 'your_table';
Note - 1: First print table users and then addresses. Position the above command just after the CREATE TABLE command for each table.
Note - 2: Replace 'your_table' with the actual table name used in the query.


Solution:
CREATE TABLE users(
id INT PRIMARY KEY,
full_name VARCHAR(20) NOT NULL,
enabled CHAR(10) NOT NULL,
last_login DATE );

SELECT table_name, column_name, data_type
FROM information_schema.columns
WHERE table_name = 'users';

CREATE TABLE addresses(
user_id INT PRIMARY KEY,
street VARCHAR(50) NOT NULL,
city VARCHAR(25) NOT NULL,
state VARCHAR(50) NOT NULL,
FOREIGN KEY (user_id) REFERENCES users(id));

SELECT table_name, column_name, data_type
FROM information_schema.columns
WHERE table_name = 'addresses';

Output:
CREATE TABLE
 table_name | column_name |     data_type     
------------+-------------+-------------------
 users      | id          | integer
 users      | full_name   | character varying
 users      | enabled     | character
 users      | last_login  | date

CREATE TABLE
 table_name | column_name |     data_type     
------------+-------------+-------------------
 addresses  | user_id     | integer
 addresses  | street      | character varying
 addresses  | city        | character varying
 addresses  | state       | character varying