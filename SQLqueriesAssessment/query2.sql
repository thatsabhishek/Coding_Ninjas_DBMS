Problem Statement:
Create the customers table for this database.
The attributes and their respective datatypes are as follows:

   Attributes    |  Data Type
   customer_id   |  VARCHAR(20) (PRIMARY KEY)
   customer_name |  VARCHAR(225)
     phone_no    |   INT
        city     |   VARCHAR(200)
     pin_code    |   INT

Information about the tables:
Given below is a database of a newly established e-commerce website. 
The database contains multiple tables i.e. products, orders, and transactions. 
The information about required tables is given below

Table transactions:
Attributes list:
    Attributes         |  Data Type
    transaction_id     | VARCHAR(20) (PRIMARY KEY)
    transaction_status | VARCHAR(25)

Note: Describe the complete table afterwards.
   DESC table_name;

Solution:
CREATE TABLE customers (
customer_id VARCHAR(20) PRIMARY KEY,
customer_name VARCHAR(225),
phone_no INT,
city VARCHAR(200),
pin_code INT);

DESC customers;

Output:
+---------------+--------------+------+-----+---------+-------+
| Field         | Type         | Null | Key | Default | Extra |
+---------------+--------------+------+-----+---------+-------+
| customer_id   | varchar(20)  | NO   | PRI | NULL    |       |
| customer_name | varchar(225) | YES  |     | NULL    |       |
| phone_no      | int          | YES  |     | NULL    |       |
| city          | varchar(200) | YES  |     | NULL    |       |
| pin_code      | int          | YES  |     | NULL    |       |
+---------------+--------------+------+-----+---------+-------+