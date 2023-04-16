Problem Statement:
Write a SQL query to print the item name, item type and price of all the items present in both the shops in descending order of their price.

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
SELECT item_name, item_type, price FROM shop_1
UNION ALL
SELECT item_name, item_type, price FROM shop_2
ORDER BY PRICE desc;

Output:
+------------+------------+-------+
| item_name  | item_type  | price |
+------------+------------+-------+
| shampoo    | toiletries |   100 |
| facewash   | toiletries |    70 |
| toothpaste | toiletries |    50 |
| toothbrush | toiletries |    30 |
| paintbrush | stationery |    30 |
| soap       | toiletries |    25 |
| soap       | toiletries |    25 |
| pencil     | stationery |    15 |
| pencil     | stationery |    10 |
| eraser     | stationery |     5 |
+------------+------------+-------+