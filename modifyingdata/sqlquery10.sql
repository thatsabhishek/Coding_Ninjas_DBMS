Problem Statement :
It’s a time of recession so a new startup company has to cut down on its employee base to reduce its expenses and it has decided to remove all those employees whose name contains “an” in their name and have salary more than 100000, so update the database accordingly.

Information about the table
Table Employee :
+----+---------+-----+--------+--------+
| id | name    | age | gender | salary |
+----+---------+-----+--------+--------+
|  1 | Ryan    |  21 | M      | 100000 |
|  2 | Joanna  |  26 | F      | 243200 |
|  3 | Alice   |  18 | M      |  20000 |
|  4 | Ankita  |  22 | F      | 100000 |
|  5 | Bina    |  50 | F      | 700000 |
|  6 | Kishore |  31 | M      | 100000 |
|  7 | Ali     |  65 | M      | 500000 |
|  8 | Nina    |  21 | F      |  50000 |
|  9 | Aman    |  28 | M      | 250000 |
| 10 | Raj     |  24 | M      | 150000 |
+----+---------+-----+--------+--------+
Note: Print the complete table after updating the data.

solution:
DELETE FROM Employee WHERE name LIKE '%an%' AND salary>100000;
select * from employee;

Output:
+----+---------+-----+--------+--------+
| id | name    | age | gender | salary |
+----+---------+-----+--------+--------+
|  1 | Ryan    |  21 | M      | 100000 |
|  3 | Alice   |  18 | M      |  20000 |
|  4 | Ankita  |  22 | F      | 100000 |
|  5 | Bina    |  50 | F      | 700000 |
|  6 | Kishore |  31 | M      | 100000 |
|  7 | Ali     |  65 | M      | 500000 |
|  8 | Nina    |  21 | F      |  50000 |
| 10 | Raj     |  24 | M      | 150000 |
+----+---------+-----+--------+--------+