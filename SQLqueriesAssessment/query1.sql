Problem Statement:
Write an SQL query to add a new column “transaction_type”, for the transactions table.

Note: Datatype for transaction_type is VARCHAR(225).


Information about the tables:
Given below is a database of a newly established e-commerce website. The database contains multiple tables i.e. products, orders, and transactions. The information about required tables is given below

Table transactions:
Attributes list:
   Attributes         |  Data Type
   transaction_id     | VARCHAR(20) PRIMARY KEY
   transaction_status | VARCHAR(25)

Data list:
transaction_id | transaction_status
tid1           |  completed
tid2           |  not completed
tid3           |  not completed
tid4           |  completed
tid5           |  completed
tid6           |  not completed


Note: Describe the complete table afterwards.
   DESC table_name;

Solution:
ALTER TABLE transactions ADD COLUMN transaction_type VARCHAR(225);
DESC transactions;

Output:
+--------------------+--------------+------+-----+---------+-------+
| Field              | Type         | Null | Key | Default | Extra |
+--------------------+--------------+------+-----+---------+-------+
| transaction_id     | varchar(20)  | YES  |     | NULL    |       |
| transaction_status | varchar(225) | YES  |     | NULL    |       |
| transaction_type   | varchar(225) | YES  |     | NULL    |       |
+--------------------+--------------+------+-----+---------+-------+