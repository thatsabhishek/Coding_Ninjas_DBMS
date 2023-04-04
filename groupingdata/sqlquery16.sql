Information about the table:
Table Employee:

+--------+----------+--------+---------+-----------------+
| emp_id | emp_name | salary | dept_id | year_of_joining |
+--------+----------+--------+---------+-----------------+
|      1 | sheldon  |  20000 |      10 |            2009 |
|      2 | amy      |  51000 |      20 |            2014 |
|      3 | penny    |  69000 |      30 |            2019 |
|      4 | leonard  | 100000 |      40 |            2008 |
|      5 | raj      |  30000 |      30 |            2015 |
|      6 | howard   |  40000 |      20 |            2013 |
|      7 | harvey   |  70000 |      10 |            2017 |
|      8 | thomas   |  80000 |      40 |            2010 |
|      9 | charlie  |  99000 |      10 |            2005 |
|     10 | alan     |  96000 |      20 |            2005 |
+--------+----------+--------+---------+-----------------+

Problem Statement:
Write an SQL Query to count the distinct emp_id in each department in the Employee table.
Note: Name the number of distinct employees as "Emp_num" using the Alias Keyword.

Solution:
SELECT dept_id, COUNT(emp_id) AS Emp_num FROM employee GROUP BY dept_id;

Output:
+---------+---------+
| dept_id | Emp_num |
+---------+---------+
|      10 |       3 |
|      20 |       3 |
|      30 |       2 |
|      40 |       2 |
+---------+---------+