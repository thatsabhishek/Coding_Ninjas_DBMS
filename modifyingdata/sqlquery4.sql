Problem Statement
Write Queries to:
1. Update the Age of Id 2 to 18.
2. Update the cash_balance of Muthu to 2000.

Note: These two are seperate queries.

Information about the table

Table BankAccount:
  Id |  Name  |  cash_balance  | Age
  1  |  Ayush |      500       | 21
  2  |    -   |      1000      | 18
  4  |  Muthu |        -       | 25

Note: Print the complete table BankAccount after these updation.

Solution:
UPDATE bankaccount SET age =18 WHERE id=4;

UPDATE bankaccount SET cash_balance =2000 WHERE id=4;
select * from bankaccount;

Output:
+----+--------+--------------+------+
| Id | Name   | cash_balance | Age  |
+----+--------+--------------+------+
|  1 | Ayush  |          500 |   21 |
|  2 | Aniket |         1000 | NULL |
|  4 | Muthu  |         2000 |   18 |
+----+--------+--------------+------+