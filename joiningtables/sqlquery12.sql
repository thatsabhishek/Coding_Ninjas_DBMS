Problem Statement:
Write a SQL query to make a report, with buyer name, buyer city, product number, purchased date, amount, seller name and profit to find that either any of the existing buyer have purchased any product or not, by their seller.

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
SELECT b.bname, b.bcity, p.pid, p.pdate, p.amount, s.sname, s.profit FROM Seller s
JOIN product p ON s.sid=p.sid
JOIN buyer b 
ON b.bid=p.bid;

Output:
+----------+------------+------+------------+--------+--------+--------+
| bname    | bcity      | pid  | pdate      | amount | sname  | profit |
+----------+------------+------+------------+--------+--------+--------+
| rahul    | jammu      |   21 | 2022-01-11 |    500 | aditi  |    200 |
| roshni   | chandigarh |   27 | 2022-11-26 |    500 | anchit |    300 |
| roshni   | chandigarh |   22 | 2022-02-12 |    300 | anchit |    300 |
| ankush   | delhi      |   23 | 2022-02-17 |   1000 | rohit  |    100 |
| himanshu | jaipur     |   24 | 2022-03-14 |    600 | virat  |    400 |
| manya    | lucknow    |   25 | 2022-06-16 |    700 | aditi  |    200 |
| anjali   | dehradun   |   26 | 2022-08-18 |    800 | taimur |    200 |
+----------+------------+------+------------+--------+--------+--------+