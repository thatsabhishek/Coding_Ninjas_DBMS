Problem Statement
Due to multiple issues due to the wrong data insertion of a person with id 305, the company needs to replace the data with its correct information. Formulate a query for the same.

Correct Information is :
  Attribute         | Correct VALUE
  Name              | Kev
  insurance_amount  | 1750000
  premium_date      | 2014-09-08

Information about the table
Table Insurance :
+--------------+-------+------------------+--------------+
| insurance_id | Name  | insurance_amount | premium_date |
+--------------+-------+------------------+--------------+
|          301 | Ayush |           120000 | 2015-09-15   |
|          302 | Kone  |           130000 | 2015-09-30   |
|          303 | John  |           124500 | 2015-10-15   |
|          304 | Mike  |           165500 | 2015-10-30   |
|          305 | Kevin |             1800 | 2015-09-15   |
|          306 | Gru   |           180000 | 2015-09-30   |
+--------------+-------+------------------+--------------+
Note: Display the table after updating

Solution:
REPLACE INTO Insurance (insurance_id,name,insurance_amount,premium_date)
VALUE(305,'Kev',1750000,'2014-09-08');
SELECT * FROM Insurance;

Output:
+--------------+-------+------------------+--------------+
| insurance_id | Name  | insurance_amount | premium_date |
+--------------+-------+------------------+--------------+
|          301 | Ayush |           120000 | 2015-09-15   |
|          302 | Kone  |           130000 | 2015-09-30   |
|          303 | John  |           124500 | 2015-10-15   |
|          304 | Mike  |           165500 | 2015-10-30   |
|          305 | Kev   |          1750000 | 2014-09-08   |
|          306 | Gru   |           180000 | 2015-09-30   |
+--------------+-------+------------------+--------------+