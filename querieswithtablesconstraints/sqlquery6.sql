Problem Statement :
Given a table named members, write a query to add a column named cc_number (Datatype - VARCHAR).

Note : Print the Table Schema once created as follows:
    SELECT table_name, column_name, data_type
    FROM information_schema.columns
    WHERE table_name = 'your_table'
    ORDER BY column_name;


Note - 1: Replace 'your_table' with the actual table name used in the query.
Note - 2: Write keywords of syntax in uppercase alphabets.


Solution:
ALTER TABLE members ADD cc_number VARCHAR(50);

    SELECT table_name, column_name, data_type
    FROM information_schema.columns
    WHERE table_name = 'members'
    ORDER BY column_name;

Output:
+------------+-------------+-----------+
| TABLE_NAME | COLUMN_NAME | DATA_TYPE |
+------------+-------------+-----------+
| members    | cc_number   | varchar   |
| members    | City        | varchar   |
| members    | ID          | int       |
| members    | mem_Name    | varchar   |
| members    | member_dob  | date      |
| members    | money       | int       |
+------------+-------------+-----------+