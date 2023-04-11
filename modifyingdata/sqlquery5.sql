Problem Statement:
Given a table named stud_data, formulate a query to change the Fname and Age of the already entered record to ( Neelabh, 22 ) of roll number 17.

Information about the table
Table stud_data :
  roll_no |  Fname   |  Age
    17    |  Rishi   |  23
    7     |  Shantnu |  21
    10    |  Ojasv   |  19
    50    |  Lokesh  |  23
    21    |  Kuldeep |  20

Note: Print the complete table after updating the data.

Solution:
UPDATE stud_data SET fname='Neelabh', Age=22 WHERE roll_no=17;

SELECT * FROM stud_data;

Output:
UPDATE 1
 roll_no |    fname         | age 
---------+------------------+-----
       7 | Shantnu          |  21
      10 | Ojasv            |  19
      50 | Lokesh           |  23
      21 | Kuldeep          |  20
      17 | Neelabh          |  22