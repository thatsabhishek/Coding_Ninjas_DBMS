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
Write an SQL query to find different years in which the employees join after the year 2010.

Solution:
SELECT year_of_joining FROM employee WHERE year_of_joining>2010 GROUP BY year_of_joining;

Output:
+-----------------+
| year_of_joining |
+-----------------+
|            2014 |
|            2019 |
|            2015 |
|            2013 |
|            2017 |
+-----------------+