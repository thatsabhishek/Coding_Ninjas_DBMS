Problem Statement:
Formulate a MySQL query to list out all the projects(id, name) and employee's names (first, last) along with their respective Email id’s irrespective of the fact if that project is assigned or not and whether an employee is assigned any project or none.

Information about the table:
Table Employee:
+-------+-----------+----------+------+-------------------+-----------+-----------+
| EmpID | EmpFname  | EmpLname | Age  | EmailID           | PhoneNo   | City      |
+-------+-----------+----------+------+-------------------+-----------+-----------+
| 1     | Riya      | Khanna   |   21 | riya@abc.com      | 987655443 | Delhi     |
| 2     | Sahil     | Kumar    |   32 | sahil@abc.com     | 987657643 | Mumbai    |
| 3     | Vishwas   | Aanand   |   24 | vishwas@abc.com   | 987658871 | Kolkata   |
| 4     | Harleen   | Kaur     |   27 | harleen@abc.com   | 987677585 | Bengaluru |
| 5     | Priyanshu | Gupta    |   23 | priyanshu@abc.com | 956758556 | Hyderabad |
+-------+-----------+----------+------+-------------------+-----------+-----------+

Table Project:
+-----------+-------+-------------+------------------+----------+
| ProjectID | EmpID | ProjectName | ProjectStartDate | ClientID |
+-----------+-------+-------------+------------------+----------+
| 100       | 1     | pro_1       | 2021-04-21       | 3        |
| 200       | 2     | pro_2       | 2021-03-12       | 1        |
| 300       | 3     | pro_3       | 2021-01-16       | 5        |
| 400       | 3     | pro_4       | 2021-04-27       | 2        |
| 500       | 5     | pro_5       | 2021-05-01       | 4        |
| 600       | 9     | pro_6       | 2021-01-19       | 1        |
| 700       | 7     | pro_7       | 2021-08-27       | 2        |
| 800       | 8     | pro_8       | 2021-09-15       | 3        |
+-----------+-------+-------------+------------------+----------+

Hint: Use Full Join, but MySql doesn’t support the “Full Join” clause.
Note-1: Write keywords of syntax in uppercase alphabets.
Note-2: Use employee ID to link the two tables.

Solution:
SELECT p.projectid, p.projectname, e.empfname, e.emplname, e.emailid FROM project p
LEFT JOIN employee e
ON p.empid = e.empid
UNION
SELECT p.projectid, p.projectname, e.empfname, e.emplname, e.emailid FROM project p
RIGHT JOIN employee e
ON p.empid = e.empid;

Output:
+-----------+-------------+-----------+----------+-------------------+
| projectid | projectname | empfname  | emplname | emailid           |
+-----------+-------------+-----------+----------+-------------------+
| 100       | pro_1       | Riya      | Khanna   | riya@abc.com      |
| 200       | pro_2       | Sahil     | Kumar    | sahil@abc.com     |
| 300       | pro_3       | Vishwas   | Aanand   | vishwas@abc.com   |
| 400       | pro_4       | Vishwas   | Aanand   | vishwas@abc.com   |
| 500       | pro_5       | Priyanshu | Gupta    | priyanshu@abc.com |
| 600       | pro_6       | NULL      | NULL     | NULL              |
| 700       | pro_7       | NULL      | NULL     | NULL              |
| 800       | pro_8       | NULL      | NULL     | NULL              |
| NULL      | NULL        | Harleen   | Kaur     | harleen@abc.com   |
+-----------+-------------+-----------+----------+-------------------+