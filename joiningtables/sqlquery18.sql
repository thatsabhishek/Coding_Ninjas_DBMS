Problem Statement:
Write a SQL query to make a list with the buyer’s name, buyer’s city, product id, purchased date and the amount for only those buyers in the table who must have a budget.

Information about the table:
Table Buyer:
+------+----------+------------+--------+------+
| bid  | bname    | bcity      | budget | sid  |
+------+----------+------------+--------+------+
|    1 | rahul    | jammu      |   1000 |   11 |
|    2 | roshni   | chandigarh |   2000 |   12 |
|    3 | ankush   | delhi      |   3000 |   13 |
|    4 | himanshu | jaipur     |   1000 |   14 |
|    5 | manya    | lucknow    |   2000 |   11 |
|    6 | anjali   | dehradun   |   NULL |   15 |
+------+----------+------------+--------+------+

Table Seller:
+------+--------+---------+--------+
| sid  | sname  | scity   | profit |
+------+--------+---------+--------+
|   11 | aditi  | delhi   |    200 |
|   12 | anchit | mumbai  |    300 |
|   13 | rohit  | chennai |    100 |
|   14 | virat  | kolkata |    400 |
|   15 | taimur | indore  |    200 |
+------+--------+---------+--------+

Table Product:
+------+--------+------------+------+------+
| pid  | amount | pdate      | bid  | sid  |
+------+--------+------------+------+------+
|   21 |    500 | 2022-01-11 |    1 |   11 |
|   22 |    300 | 2022-02-12 |    2 |   12 |
|   23 |   1000 | 2022-02-17 |    3 |   13 |
|   24 |    600 | 2022-03-14 |    4 |   14 |
|   25 |    700 | 2022-06-16 |    5 |   11 |
|   26 |    800 | 2022-08-18 |    6 |   15 |
|   27 |    500 | 2022-11-26 |    2 |   12 |
+------+--------+------------+------+------+

Note: Write keywords of syntax in uppercase alphabets.

Solution:
SELECT b.bname, b.bcity, p.pid, p.pdate, p.amount FROM buyer b
LEFT JOIN Product p ON b.bid = p.bid
WHERE b.budget>0;

Output:
+----------+------------+------+------------+--------+
| bname    | bcity      | pid  | pdate      | amount |
+----------+------------+------+------------+--------+
| rahul    | jammu      |   21 | 2022-01-11 |    500 |
| roshni   | chandigarh |   27 | 2022-11-26 |    500 |
| roshni   | chandigarh |   22 | 2022-02-12 |    300 |
| ankush   | delhi      |   23 | 2022-02-17 |   1000 |
| himanshu | jaipur     |   24 | 2022-03-14 |    600 |
| manya    | lucknow    |   25 | 2022-06-16 |    700 |
+----------+------------+------+------------+--------+