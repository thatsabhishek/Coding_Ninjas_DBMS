Problem Statement :
Write a SQL query to remove the attribute 'last_login' and rename the 'full_name' to 'customer_name' in the customer table.

Table customer
    Attribute   |  Datatype
    id          |  INT (Primary Key)
    full_name   |  VARCHAR(30)
    totalOrders |  INT
    last_login  |  DATE
    phone_no    |  VARCHAR (200)
    
Syntax to describe the above table.
DESC <TABLE_NAME>;

Note: Write keywords of syntax in uppercase alphabets. 

Solution :
ALTER TABLE customer DROP last_login, CHANGE COLUMN full_name customer_name VARCHAR(30);
DESC customer;

Output:
+---------------+--------------+------+-----+---------+-------+
| Field         | Type         | Null | Key | Default | Extra |
+---------------+--------------+------+-----+---------+-------+
| id            | int          | YES  |     | NULL    |       |
| customer_name | varchar(30)  | YES  |     | NULL    |       |
| totalOrders   | int          | YES  |     | NULL    |       |
| phone_no      | varchar(200) | YES  |     | NULL    |       |
+---------------+--------------+------+-----+---------+-------+