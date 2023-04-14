Information about the table:
Table Employee_data:

+---------+----------+----------+-------------------+---------+------------+--------+----------+
| EmpCode | EmpFName | EmpLName | Job               | Manager | HireDate   | Salary | DeptCode |
+---------+----------+----------+-------------------+---------+------------+--------+----------+
|    9369 | TONY     | STARK    | SOFTWARE ENGINEER | 7902    | 1980-12-17 |   2800 |       20 |
|    9499 | TIM      | ADOLF    | SALESMAN          | 7698    | 1981-02-20 |   1600 |       30 |
|    9566 | KIM      | JARVIS   | MANAGER           | 7839    | 1981-04-02 |   3570 |       20 |
|    9654 | SAM      | MILES    | SALESMAN          | 7698    | 1981-09-28 |   1250 |       30 |
|    9782 | KEVIN    | HILL     | MANAGER           | 7839    | 1981-06-09 |   2940 |       10 |
|    9788 | CONNIE   | SMITH    | ANALYST           | 7566    | 1982-12-09 |   3000 |       20 |
|    9839 | ALFRED   | KINSLEY  | PRESIDENT         | 7566    | 1981-11-17 |   5000 |       10 |
|    9844 | PAUL     | TIMOTHY  | SALESMAN          | 7698    | 1981-09-08 |   1500 |       30 |
|    9876 | JOHN     | ASGHAR   | SOFTWARE ENGINEER | 7788    | 1983-01-12 |   3100 |       20 |
|    9900 | ROSE     | SUMMERS  | TECHNICAL LEAD    | 7698    | 1981-12-03 |   2950 |       20 |
|    9902 | ANDREW   | FAULKNER | ANALYST           | 7566    | 1981-12-03 |   3000 |       10 |
|    9934 | KAREN    | MATTHEWS | SOFTWARE ENGINEER | 7782    | 1982-01-23 |   3300 |       20 |
|    9591 | WENDY    | SHAWN    | SALESMAN          | 7698    | 1981-02-22 |    500 |       30 |
|    9698 | BELLA    | SWAN     | MANAGER           | 7839    | 1981-05-01 |   3420 |       30 |
|    9777 | MADII    | HIMBURY  | ANALYST           | 7839    | 1981-05-01 |   2000 |     NULL |
|    9860 | ATHENA   | WILSON   | ANALYST           | 7839    | 1992-06-21 |   7000 |       50 |
|    9861 | JENNIFER | HUETTE   | ANALYST           | 7839    | 1996-07-01 |   5000 |       50 |
+---------+----------+----------+-------------------+---------+------------+--------+----------+

Problem Statement:
For All the Analyst jobs list down the maximum salaries offered to them in different departments and under different managers, list all the details in ascending order based on the combined salary given out by that department.

Solution:
SELECT job, Deptcode, manager, MAX(salary) FROM employee_data WHERE job='ANALYST' GROUP BY job, deptcode, manager ORDER BY SUM(salary);

Output:
+---------+----------+---------+-------------+
| job     | Deptcode | manager | MAX(salary) |
+---------+----------+---------+-------------+
| ANALYST |     NULL | 7839    |        2000 |
| ANALYST |       20 | 7566    |        3000 |
| ANALYST |       10 | 7566    |        3000 |
| ANALYST |       50 | 7839    |        7000 |
+---------+----------+---------+-------------+
