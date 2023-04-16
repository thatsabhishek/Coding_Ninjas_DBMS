Problem Statement:
List down employees (all the details) from both the departments who work as Salesman.

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

Note-1: The data should contain duplicate rows of employees.
Note-2: Write keywords of syntax in uppercase alphabets.

Solution:
SELECT * FROM Empdept1 WHERE job = 'salesman'
UNION ALL
SELECT * FROM Empdept2 
WHERE job = 'salesman';

Output:
+---------+----------+----------+----------+
| EmpCode | EmpFName | EmpLName | Job      |
+---------+----------+----------+----------+
|    9499 | TIM      | ADOLF    | SALESMAN |
|    9654 | SAM      | MILES    | SALESMAN |
|    9685 | SAMAY    | DAGA     | SALESMAN |
+---------+----------+----------+----------+