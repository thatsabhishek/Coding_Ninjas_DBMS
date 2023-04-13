Problem Statement:
Write an SQL query to inner join all the three table(Supplier, SP and Product) and print all the elements of the table. The tables should be joined in the same order as stated above.

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

Note: Write keywords of syntax in uppercase alphabets. Also, the values should be sorted in ascending order of 'Pno'.

Solution:
SELECT s.*, sp.*, p.* FROM Supplier AS s
INNER JOIN SP
INNER JOIN product AS p
ON
s.sno= SP.sno AND p.pno = SP.pno; 

Output:
+------+----------+------------+--------+------+------+------+------+----------+--------+--------+
| Sno  | Sname    | City       | Status | Sno  | Pno  | Qty  | Pno  | Pname    | Colour | Weight |
+------+----------+------------+--------+------+------+------+------+----------+--------+--------+
|    5 | krishna  | jaipur     | active |    5 |    1 |   11 |    1 | pen      | red    |      5 |
|    6 | kashish  | chandigarh | active |    6 |    2 |   20 |    2 | pencil   | blue   |     10 |
|    3 | anjali   | bareilly   | active |    3 |    3 |   15 |    3 | sharpner | red    |      3 |
|    2 | sahil    | amritsar   | active |    2 |    4 |    8 |    4 | eraser   | white  |      6 |
|    4 | priyanka | delhi      | active |    4 |    5 |    6 |    5 | stapler  | green  |     40 |
|    1 | rachit   | jalandhar  | active |    1 |    6 |   10 |    6 | whitener | white  |     15 |
+------+----------+------------+--------+------+------+------+------+----------+--------+--------+