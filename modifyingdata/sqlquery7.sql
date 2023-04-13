Problem Statement:
All those bank branches which are in Delhi and Bangalore are shifted to Noida due to its increasing popularity so update the branch accordingly.

Information about the table:
Table Bank :
+----+-------+-----------+--------------+
| id | Name  | branch    | CustomerBase |
+----+-------+-----------+--------------+
|  1 | HCBC  | Hyderabad |       100000 |
|  2 | GDFS  | Bangalore |       150000 |
|  3 | ZCZCQ | Delhi     |       250000 |
|  4 | PU    | Bangalore |        28000 |
|  5 | DUCO  | Delhi     |        56000 |
|  6 | LOTAK | Mumbai    |       170000 |
+----+-------+-----------+--------------+

Solution:
UPDATE Bank SET branch='Noida' WHERE branch IN ('Delhi','Bangalore');
SELECT * FROM Bank;

Output:
+----+-------+-----------+--------------+
| id | Name  | branch    | CustomerBase |
+----+-------+-----------+--------------+
|  1 | HCBC  | Hyderabad |       100000 |
|  2 | GDFS  | Noida     |       150000 |
|  3 | ZCZCQ | Noida     |       250000 |
|  4 | PU    | Noida     |        28000 |
|  5 | DUCO  | Noida     |        56000 |
|  6 | LOTAK | Mumbai    |       170000 |
+----+-------+-----------+--------------+