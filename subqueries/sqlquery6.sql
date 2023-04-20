Problem Statement:
Write a SQL Query to get the supplier name who supply pencils with quantity greater than 10.

Information about the table:
Table Product:
+------+----------+--------+--------+
| Pno  | Pname    | Colour | Weight |
+------+----------+--------+--------+
|    1 | pen      | red    |      5 |
|    2 | pencil   | rlue   |     10 |
|    3 | sharpner | red    |      3 |
|    4 | eraser   | white  |      6 |
|    5 | stapler  | green  |     40 |
|    6 | whitener | white  |     15 |
+------+----------+--------+--------+

Table Supplier:
+------+----------+------------+--------+
| Sno  | Sname    | City       | Status |
+------+----------+------------+--------+
|    1 | rachit   | jalandhar  | active |
|    2 | sahil    | amritsar   | active |
|    3 | anjali   | bareilly   | active |
|    4 | priyanka | delhi      | active |
|    5 | krishna  | jaipur     | active |
|    6 | kashish  | chandigarh | active |
+------+----------+------------+--------+

Table SP:
+------+------+------+
| Sno  | Pno  | Qty  |
+------+------+------+
|    1 |    6 |   10 |
|    2 |    4 |    8 |
|    3 |    3 |   15 |
|    4 |    5 |    6 |
|    5 |    1 |   11 |
|    6 |    2 |   20 |
+------+------+------+

Note: Remember that the column values are case-sensitive.

Solution:
select sname from supplier where sno = 
(select sno from sp where pno = (select pno from product where pname = 'pencil') and qty > 10);

Output:
+---------+
| sname   |
+---------+
| kashish |
+---------+