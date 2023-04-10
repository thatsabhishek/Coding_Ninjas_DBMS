Problem Statement :
Write a query for creating a table named People, which contains information given in the table below:

   Attribute   |  Data Type
   PID         |  INT (Primary Key)
   LastName    |  VARCHAR
   FirstName   |  VARCHAR
   Address     |  VARCHAR
   City        |  VARCHAR

Print the Table schema once created as follows:
    SELECT table_name, column_name, data_type
    FROM information_schema.columns
    WHERE table_name = 'your_table'
    ORDER BY column_name;


Note - 1: Replace 'your_table' with the actual table name used in the query.
Note - 2: Write keywords of syntax in uppercase alphabets.

Solution:
CREATE TABLE People(
PID INT PRIMARY KEY,
LastName VARCHAR(12),
FirstName VARCHAR(15) NOT NULL,
Address VARCHAR(50),
City VARCHAR(20) );

SELECT table_name, column_name, data_type
    FROM information_schema.columns
    WHERE table_name = 'People'
    ORDER BY column_name;

Output:
+------------+-------------+-----------+
| TABLE_NAME | COLUMN_NAME | DATA_TYPE |
+------------+-------------+-----------+
| people     | Address     | varchar   |
| people     | City        | varchar   |
| people     | FirstName   | varchar   |
| people     | LastName    | varchar   |
| people     | PID         | int       |
+------------+-------------+-----------+
