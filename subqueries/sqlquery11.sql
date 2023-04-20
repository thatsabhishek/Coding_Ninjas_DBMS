Problem Statement:
Find the IDs of sailors and their daytook for sailors with highest rating.

Information about the table:
Table sailors:
+------+---------+--------+------+
| sid  | sname   | rating | age  |
+------+---------+--------+------+
|   22 | dustin  |      7 |   25 |
|   29 | brutus  |      1 |   33 |
|   31 | lubber  |     79 |   55 |
|   32 | andy    |      8 |   25 |
|   58 | rusty   |     10 |   35 |
|   58 | buplb   |     10 |   55 |
|   58 | buplerb |     10 |   35 |
|   22 | bb      |     10 |   55 |
|   11 | buplb   |      4 |   55 |
|    7 | buplerb |      6 |   35 |
+------+---------+--------+------+

Table boats:
+------+-----------+-------+
| bid  | bname     | color |
+------+-----------+-------+
|  101 | interlake | blue  |
|  102 | interlake | red   |
|  103 | clipper   | green |
|  104 | marine    | red   |
+------+-----------+-------+

Table reserves:
+------+------+------------+
| sid  | bid  | daytook    |
+------+------+------------+
|   22 |  101 | 2004-01-01 |
|   22 |  102 | 2004-01-01 |
|   22 |  103 | 2004-02-01 |
|   22 |  105 | 2004-02-01 |
|   31 |  103 | 2005-05-05 |
|   32 |  104 | 2005-04-07 |
+------+------+------------+

Solution:
select sid, daytook from reserves where sid in (select sid from sailors where rating in 
                                               (select max(rating) from sailors));
                
Output:
+------+------------+
| sid  | daytook    |
+------+------------+
|   31 | 2005-05-05 |
+------+------------+