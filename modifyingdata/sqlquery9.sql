Problem Statement:
Someone has mistakenly added the wrong data in the table as the data only for people above Age 20 was needed. You have to remove the data of all such people whose age is less than equal to 20 years.

Information about the table:
Table stud_data:
+---------+---------+------+
| roll_no | Fname   | Age  |
+---------+---------+------+
|      17 | Rishi   |   23 |
|       7 | Shantnu |   21 |
|      10 | Ojasv   |   19 |
|      50 | Lokesh  |   23 |
|      21 | Kuldeep |   20 |
+---------+---------+------+
Note: Print the complete table after updating the data.

Solution:
DELETE FROM stud_data WHERE age <=20;
select * from stud_data;

Output:
+---------+---------+------+
| roll_no | Fname   | Age  |
+---------+---------+------+
|      17 | Rishi   |   23 |
|       7 | Shantnu |   21 |
|      50 | Lokesh  |   23 |
+---------+---------+------+