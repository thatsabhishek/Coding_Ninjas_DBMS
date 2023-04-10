Problem Statement :
Given a table named members, write a query to remove a column named member_dob.

Print the Table Schema once created as follows:

    SELECT table_name, column_name, data_type
    FROM information_schema.columns
    WHERE table_name = 'your_table'
    ORDER BY column_name;


Note - 1: Replace 'your_table' with the actual table name used in the query.
Note - 2: Write keywords of syntax in uppercase alphabets.

Solution :
ALTER TABLE members DROP member_dob;
   SELECT table_name, column_name, data_type
    FROM information_schema.columns
    WHERE table_name = 'members'
    ORDER BY column_name;

Output:
+------------+-------------+-----------+
| TABLE_NAME | COLUMN_NAME | DATA_TYPE |
+------------+-------------+-----------+
| members    | City        | varchar   |
| members    | ID          | int       |
| members    | mem_Name    | varchar   |
| members    | money       | int       |
+------------+-------------+-----------+