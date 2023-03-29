Information about the table:
Table Employee:

+--------+----------+--------+---------+-----------------+
| emp_id | emp_name | salary | dept_id | year_of_joining |
+--------+----------+--------+---------+-----------------+
|      1 | sheldon  |  20000 |      10 |            2009 |
|      2 | amy      |  51000 |      20 |            2014 |
|      3 | penny    |  69000 |      30 |            2019 |
|      4 | leonard  |  88000 |      40 |            2008 |
|      5 | raj      |  30000 |      30 |            2015 |
|      6 | howard   |  40000 |      20 |            2013 |
|      7 | harvey   |  70000 |      10 |            2017 |
|      8 | thomas   |  80000 |      40 |            2010 |
|      9 | charlie  |  99000 |      10 |            2005 |
|     10 | alan     |  96000 |      20 |            2005 |
+--------+----------+--------+---------+-----------------+

Problem Statement:
Write an SQL query to get the list of all the department's ids present in the Employee table where salary is greater than 50000.

Solution:
SELECT dept_id FROM employee WHERE salary>50000 GROUP BY dept_id;

Output:
+---------+
| dept_id |
+---------+
|      20 |
|      30 |
|      40 |
|      10 |
+---------+