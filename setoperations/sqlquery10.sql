Problem Statement:
Write a SQL query to print the item name, item type of only the items which are available in shop 1 but not in shop 2 in the ascending order of item name.

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
SELECT item_name, item_type FROM shop_1 LEFT JOIN shop_2
USING(item_name, item_type)
WHERE shop_2.item_id IS NULL
ORDER BY item_name;

Output:
+------------+------------+
| item_name  | item_type  |
+------------+------------+
| eraser     | stationery |
| toothbrush | toiletries |
| toothpaste | toiletries |
+------------+------------+