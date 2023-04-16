Problem Statement:
List out each employee name and employee code from both the departments and order them in ascending order by their code.

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

Note-1: Duplicates are allowed.
Note-2: Write keywords of syntax in uppercase alphabets.

Solution:
SELECT EMPFNAME, EMPLNAME, EMPCODE FROM EMPDEPT1 
UNION ALL
SELECT EMPFNAME, EMPLNAME, EMPCODE FROM EMPDEPT2 ORDER BY EMPCODE;

Output:
+----------+----------+---------+
| EMPFNAME | EMPLNAME | EMPCODE |
+----------+----------+---------+
| TONY     | STARK    |    9369 |
| TIM      | ADOLF    |    9499 |
| KIM      | JARVIS   |    9566 |
| KIM      | JARVIS   |    9566 |
| SAM      | MILES    |    9654 |
| SAMAY    | DAGA     |    9685 |
| ANDREW   | FAULKNER |    9902 |
+----------+----------+---------+