Problem Statement:
Write a SQL query to get the item_name, price of items in shop_1 and shop_2 where price is greater than 25.

Information about the table:
Table shop_1:
+---------+------------+------------+-------+
| item_id | item_name  | item_type  | price |
+---------+------------+------------+-------+
|       1 | pencil     | stationery |    10 |
|       2 | soap       | toiletries |    25 |
|       3 | eraser     | stationery |     5 |
|       4 | toothbrush | toiletries |    30 |
|       5 | toothpaste | toiletries |    50 |
+---------+------------+------------+-------+

Table shop_2:
+---------+------------+------------+-------+
| item_id | item_name  | item_type  | price |
+---------+------------+------------+-------+
|       1 | facewash   | toiletries |    70 |
|       2 | soap       | toiletries |    25 |
|       3 | pencil     | stationery |    15 |
|       4 | paintbrush | stationery |    30 |
|       5 | shampoo    | toiletries |   100 |
+---------+------------+------------+-------+

Note: Write keywords of syntax in uppercase alphabets.

Solution:
SELECT ITEM_NAME, PRICE FROM SHOP_1 WHERE PRICE>25
UNION ALL
SELECT ITEM_NAME, PRICE FROM SHOP_2 WHERE PRICE>25;

Output:
+------------+-------+
| ITEM_NAME  | PRICE |
+------------+-------+
| toothbrush |    30 |
| toothpaste |    50 |
| facewash   |    70 |
| paintbrush |    30 |
| shampoo    |   100 |
+------------+-------+