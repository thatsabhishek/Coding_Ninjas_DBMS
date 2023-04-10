Problem Statement :
Write a query to rename the Table consumers to Consumer_Data.

Print the Table Schema once created as follows:

    SELECT table_name, column_name, data_type
    FROM information_schema.columns
    WHERE table_name = 'your_table'
    ORDER BY column_name;


Note - 1: Replace 'your_table' with the actual table name used in the query.
Note - 2: Write keywords of syntax in uppercase alphabets.

Solution :
ALTER TABLE consumers RENAME Consumer_Data;

    SELECT table_name, column_name, data_type
    FROM information_schema.columns
    WHERE table_name = 'Consumer_Data'
    ORDER BY column_name;

Output:
+---------------+-------------+-----------+
| TABLE_NAME    | COLUMN_NAME | DATA_TYPE |
+---------------+-------------+-----------+
| consumer_data | full_name   | varchar   |
| consumer_data | id          | int       |
| consumer_data | last_login  | date      |
| consumer_data | phone_no    | varchar   |
| consumer_data | totalOrders | int       |
+---------------+-------------+-----------+