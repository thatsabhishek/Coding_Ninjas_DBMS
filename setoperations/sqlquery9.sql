Problem Statement:
List down all the details of employees working in dept1 but not in Dept2.

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

Note: Write keywords of syntax in uppercase alphabets.

Solution:
SELECT * FROM empdept1 LEFT JOIN empdept2 
USING (empcode, empfname, emplname, job)
WHERE empdept2.empcode IS NULL;

Output:
+---------+----------+----------+-------------------+
| EmpCode | EmpFName | EmpLName | Job               |
+---------+----------+----------+-------------------+
|    9369 | TONY     | STARK    | SOFTWARE ENGINEER |
|    9499 | TIM      | ADOLF    | SALESMAN          |
|    9654 | SAM      | MILES    | SALESMAN          |
+---------+----------+----------+-------------------+
