Problem Statement:
Write a SQL query to find the item name along with its type of stationery item which is available in both the shops.

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
SELECT DISTINCT item_name, item_type FROM shop_1 INNER JOIN shop_2
USING (item_name, item_type) WHERE item_type = 'stationery';

Output:
+-----------+------------+
| item_name | item_type  |
+-----------+------------+
| pencil    | stationery |
+-----------+------------+