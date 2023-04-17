Problem Statement:
Find out all the details of employees that work for both the departments.

Information about the table:
Table Empdept1:
+---------+----------+----------+-------------------+
| EmpCode | EmpFName | EmpLName | Job               |
+---------+----------+----------+-------------------+
|    9369 | TONY     | STARK    | SOFTWARE ENGINEER |
|    9499 | TIM      | ADOLF    | SALESMAN          |
|    9566 | KIM      | JARVIS   | MANAGER           |
|    9654 | SAM      | MILES    | SALESMAN          |
+---------+----------+----------+-------------------+

Table Empdept2:
+---------+----------+----------+----------+
| EmpCode | EmpFName | EmpLName | Job      |
+---------+----------+----------+----------+
|    9566 | KIM      | JARVIS   | MANAGER  |
|    9902 | ANDREW   | FAULKNER | ANALYST  |
|    9685 | SAMAY    | DAGA     | SALESMAN |
+---------+----------+----------+----------+

Note-1: The data should not contain duplicate rows of employees.
Note-2: Write keywords of syntax in uppercase alphabets.

Solution:
SELECT DISTINCT * FROM empdept1 INNER JOIN empdept2
USING (empcode, empfname, emplname, job);

Output:
+---------+----------+----------+---------+
| EmpCode | EmpFName | EmpLName | Job     |
+---------+----------+----------+---------+
|    9566 | KIM      | JARVIS   | MANAGER |
+---------+----------+----------+---------+