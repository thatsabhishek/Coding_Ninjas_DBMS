Problem Statement:
Using the tables given below, list out all the employees of the company.

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
SELECT * FROM Empdept1 UNION 
SELECT * FROM Empdept2;

Output:
+---------+----------+----------+-------------------+
| EmpCode | EmpFName | EmpLName | Job               |
+---------+----------+----------+-------------------+
|    9369 | TONY     | STARK    | SOFTWARE ENGINEER |
|    9499 | TIM      | ADOLF    | SALESMAN          |
|    9566 | KIM      | JARVIS   | MANAGER           |
|    9654 | SAM      | MILES    | SALESMAN          |
|    9902 | ANDREW   | FAULKNER | ANALYST           |
|    9685 | SAMAY    | DAGA     | SALESMAN          |
+---------+----------+----------+-------------------+