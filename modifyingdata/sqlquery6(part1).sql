Problem Statement
Formulate a query to update the table accordingly and show the updated table.

As the company is celebrating its 5th anniversary, the company is updating the salaries of all people with positions “SDE” and “CA” to 150000.

Information about the table
Table Employee:
+----+---------+-----+--------+--------+---------------+
| id | name    | age | gender | salary | position      |
+----+---------+-----+--------+--------+---------------+
|  1 | Ryan    |  21 | M      | 100000 | SDE           |
|  2 | Joanna  |  26 | F      | 243200 | HOD-Marketing |
|  3 | Alice   |  18 | M      |  20000 | Intern-HR     |
|  4 | Ankita  |  22 | F      | 100000 | SDE           |
|  5 | Bina    |  50 | F      | 700000 | CEO           |
|  6 | Kishore |  31 | M      | 100000 | Finance Head  |
|  7 | Ali     |  65 | M      | 500000 | Tech Lead     |
|  8 | Nina    |  21 | F      |  50000 | CA            |
|  9 | Aman    |  28 | M      | 250000 | SDE-3         |
| 10 | Raj     |  24 | M      | 150000 | SDE-2         |
+----+---------+-----+--------+--------+---------------+
Note: Print the complete table after updating the data.

Solution:
UPDATE Employee SET salary=150000 WHERE position ='SDE' OR position ='CA';

SELECT * FROM Employee;

Output:
+----+---------+-----+--------+--------+---------------+
| id | name    | age | gender | salary | position      |
+----+---------+-----+--------+--------+---------------+
|  1 | Ryan    |  21 | M      | 150000 | SDE           |
|  2 | Joanna  |  26 | F      | 243200 | HOD-Marketing |
|  3 | Alice   |  18 | M      |  20000 | Intern-HR     |
|  4 | Ankita  |  22 | F      | 150000 | SDE           |
|  5 | Bina    |  50 | F      | 700000 | CEO           |
|  6 | Kishore |  31 | M      | 100000 | Finance Head  |
|  7 | Ali     |  65 | M      | 500000 | Tech Lead     |
|  8 | Nina    |  21 | F      | 150000 | CA            |
|  9 | Aman    |  28 | M      | 250000 | SDE-3         |
| 10 | Raj     |  24 | M      | 150000 | SDE-2         |
+----+---------+-----+--------+--------+---------------+