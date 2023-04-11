Problem Statement
Formulate a query to add a record, where you only fill in columns Roll_no, std_name, Age with the given data:

( 7, Shantnu, 21 )

Information about the table:
Attribute lists of table Students

   Attribute |  Data Type
   Roll_no   |  INT
   std_name  |  CHAR (200)
   Address   |  CHAR (200)
   Phone     |  CHAR (200)
    Age      |  INT

Note: Print the complete table after adding the values.

Solution:
INSERT INTO Students(Roll_no,std_name,Age) VALUE (7,'Shantnu',21);

SELECT * FROM students;

Output:
+---------+----------+---------+-------+------+
| Roll_no | std_name | Address | Phone | Age  |
+---------+----------+---------+-------+------+
|       7 | Shantnu  | NULL    | NULL  |   21 |
+---------+----------+---------+-------+------+
