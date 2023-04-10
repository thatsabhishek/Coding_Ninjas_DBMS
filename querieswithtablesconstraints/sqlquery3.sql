Problem Statement:

Write multiple queries to create two tables named customer and contacts:

1. The table customer contains features like ID, Name, City where all columns are never NULL. The ID here will be the primary key.

    Attribute   |  Data Type
    ID          |  INT (Primary Key)
    Name        |  VARCHAR (50)
    City        |  VARCHAR (50)

2. The Table contacts contain features like ID, Customer_Id, Customer_info, Type. Customer_ id being a foreign key that refers to ID(customer table). Also Customer_info and Type are never NULL.

    Attribute     |  Data Type
    ID            |  INT (Primary Key)
    Customer_id   |  INT 
    Customer_info |  VARCHAR (50)
    Type          |  VARCHAR (50)

Note: Describe both the tables as well. The syntax for describe is given below. Describe the Customer table first and then Contacts Table.
     DESC <TABLE_NAME>;


Note: Write keywords of syntax in uppercase alphabets.

Solution:
CREATE TABLE customer(
ID INT PRIMARY KEY,
Name VARCHAR(50) NOT NULL,
City VARCHAR(50) NOT NULL);

CREATE TABLE contacts(
ID INT PRIMARY KEY,
Customer_Id INT,
Customer_Info VARCHAR(50) NOT NULL,
Type VARCHAR(50) NOT NULL,
FOREIGN KEY(Customer_Id) REFERENCES Customer(ID));

DESC customer;
DESC contacts;

Output:
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| ID    | int         | NO   | PRI | NULL    |       |
| Name  | varchar(50) | NO   |     | NULL    |       |
| City  | varchar(50) | NO   |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+

+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| ID            | int         | NO   | PRI | NULL    |       |
| Customer_Id   | int         | YES  | MUL | NULL    |       |
| Customer_Info | varchar(50) | NO   |     | NULL    |       |
| Type          | varchar(50) | NO   |     | NULL    |       |
+---------------+-------------+------+-----+---------+-------+