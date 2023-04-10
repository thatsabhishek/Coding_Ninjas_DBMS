Problem Statement :
Write a query for creating a table named Patients, which contains the attribute given in the table below:

   Attribute     |  Data Type
   Patient_id    |  INT (Primary Key)
   Patient_title |  CHAR (NOT NULL)
   Patient_name  |  CHAR (NOT NULL)
   admit_date    |  DATA

Print the Table Schema once created as follows:

    SELECT table_name, column_name, data_type
    FROM information_schema.columns
    WHERE table_name = 'your_table'
    ORDER BY column_name;


Note - 1: Replace 'your_table' with the actual table name used in the query.
Note - 2: Write keywords of syntax in uppercase alphabets.

Solution:
CREATE TABLE Patients(
Patient_id INT PRIMARY KEY,
Patient_title CHAR(10) NOT NULL,
Patient_name CHAR(20) NOT NULL,
admit_date DATE);

   SELECT table_name, column_name, data_type
    FROM information_schema.columns
    WHERE table_name = 'Patients'
    ORDER BY column_name;

Output:
+------------+---------------+-----------+
| TABLE_NAME | COLUMN_NAME   | DATA_TYPE |
+------------+---------------+-----------+
| patients   | admit_date    | date      |
| patients   | Patient_id    | int       |
| patients   | Patient_name  | char      |
| patients   | Patient_title | char      |
+------------+---------------+-----------+