Problem Statement:
Write a SQL query to display the supplier name, product name and their active status in order of the quantity supplied. The tables (Supplier, SP and Product) should be joined in the same order as stated above.

Information about the table:
Table Product:
+------+----------+--------+--------+
| Pno  | Pname    | Colour | Weight |
+------+----------+--------+--------+
|    1 | pen      | red    |      5 |
|    2 | pencil   | blue   |     10 |
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

Note: Write keywords of syntax in uppercase alphabets.

Solution:
SELECT s.sname, p.pname , s.status FROM supplier AS s
INNER JOIN product AS p INNER JOIN SP
ON p.pno = sp.pno AND s.sno = sp.sno
ORDER BY sp.qty;

Output:
+----------+----------+--------+
| sname    | pname    | status |
+----------+----------+--------+
| priyanka | stapler  | active |
| sahil    | eraser   | active |
| rachit   | whitener | active |
| krishna  | pen      | active |
| anjali   | sharpner | active |
| kashish  | pencil   | active |
+----------+----------+--------+