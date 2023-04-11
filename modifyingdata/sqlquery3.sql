Problem Statement
Formulate queries to insert multiple rows into the table BankAccount: with the following values:

  Id |  Name  |  cash_balance  | Age
  1  |  Ayush |      500       | 21
  2  |    -   |      1000      | 18
  3  |  Muthu |        -       | 25

Information about the table:
Attribute List for table BankAccount:

  Attribute    |  Data Type
  Id           |  INT (Primary Key)
  Name         |  VARCHAR
  cash_balance |  INT
  Age          |  INT

Note: Print the complete table after adding the values.

Solution:
INSERT INTO BankAccount (Id,Name,cash_balance,Age) 
VALUES(1,'Ayush',500,21),(2,NULL,1000,18),(4,'Muthu',NULL,25);

select * from bankaccount;

Output:
+----+-------+--------------+------+
| Id | Name  | cash_balance | Age  |
+----+-------+--------------+------+
|  1 | Ayush |          500 |   21 |
|  2 | NULL  |         1000 |   18 |
|  4 | Muthu |         NULL |   25 |
+----+-------+--------------+------+