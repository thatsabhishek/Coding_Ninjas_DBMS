Problem Statement:
List out all the client details email address, whose age is between 25 to 35, along with the projects assigned to them in ascending order of their age and project ID. Also, use c for client_d and p for project, as alias name of tables.

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

Table Client_d:
+----------+-------------+-------------+------+-----------------+-----------+-----------+-------+
| ClientID | ClientFname | ClientLname | Age  | ClientEmailID   | PhoneNo   | City      | EmpID |
+----------+-------------+-------------+------+-----------------+-----------+-----------+-------+
| 1        | Steve       | Rogers      |   47 | steve@avg.com   | 986674443 | Kolkata   | 3     |
| 2        | Dustin      | Poirier     |   27 | dustin@ufc.com  | 996767643 | Kolkata   | 3     |
| 3        | Avinash     | Jain        |   24 | avinash@leg.com | 876588971 | Delhi     | 1     |
| 4        | Sushant     | Aggarwal    |   23 | sushant@tek.com | 744355585 | Hyderabad | 5     |
| 5        | Param       | Singh       |   36 | param@xyz.com   | 674445556 | Mumbai    | 2     |
+----------+-------------+-------------+------+-----------------+-----------+-----------+-------+

Note-1: Write keywords of syntax in uppercase alphabets.
Note-2: Use employee ID to link the two tables.

Solution:
SELECT c.clientid, c.clientfname, c.clientlname, c.clientemailid, p.projectid, p.projectname
FROM client_d c RIGHT JOIN project p
ON p.clientid = c.clientid
WHERE c.age BETWEEN 25 AND 35
ORDER BY c.age AND p.projectid;

Output:
+----------+-------------+-------------+----------------+-----------+-------------+
| clientid | clientfname | clientlname | clientemailid  | projectid | projectname |
+----------+-------------+-------------+----------------+-----------+-------------+
| 2        | Dustin      | Poirier     | dustin@ufc.com | 400       | pro_4       |
| 2        | Dustin      | Poirier     | dustin@ufc.com | 700       | pro_7       |
+----------+-------------+-------------+----------------+-----------+-------------+