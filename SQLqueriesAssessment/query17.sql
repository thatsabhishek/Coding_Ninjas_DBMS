Problem Statement:
List down the count of all the similar products available across all its sellers.

Information about the tables:
Given below is a database of a newly established e-commerce website. 
The database contains multiple tables i.e. products, orders, and transactions. 
The information about required tables is given below

Table product:
Attributes list:
    Attributes   |  Data Type
      item_id    |   INT (PRIMARY KEY)
     product_id  |   INT
       pname     |   VARCHAR(225)
      instock    |   CHAR
       price     |   DOUBLE
    arrival_days |   INT
       seller    |   VARCHAR(225)
       youSave   |   DOUBLE

Data list:
+---------+------------+-------------------------------------------------------------------------+---------+----------+--------------+----------------------------+---------+
| item_id | product_id | p_name                                                                  | inStock | price    | arrival_days | seller                     | youSave |
+---------+------------+-------------------------------------------------------------------------+---------+----------+--------------+----------------------------+---------+
|       1 |       7556 | Iphone 11 (128GB)                                                       | N       | 51300.05 |            5 | Maple Store                |    3600 |
|       2 |       2223 | optimum whey protien                                                    | Y       |     1614 |            7 | Cloudtail India            |     245 |
|       3 |       7556 | Iphone 11 (128GB)                                                       | Y       |    53500 |            4 | Kukreja Telecom Store      |    1400 |
|       4 |       6754 | Inalsa Electric Kettle Absa (Black/Silver)                              | Y       |      591 |            9 | k3stores                  |   10040 |
|       5 |         99 | Mini organising tech kit                                                | Y       |     1400 |            2 | dailyen                    |     200 |
|       6 |       7777 | OnePlus 9 Pro 5G (256GB)                                                | Y       |    65999 |            2 | Darshita Etel              |    4000 |
|       7 |       5454 | Iphone 11 (64GB)                                                        | Y       |    46999 |            3 | Maple Store                |    3000 |
|       8 |       4324 | Women's Cotton Blend Straight Kurti with Palazzos                       | Y       |      549 |           10 | Maxx Store                 |    1000 |
|       9 |       5655 | Redmi 9 Activ (128GB)                                                   | N       |    10999 |            3 | Darshita Electronics       |     200 |
|      10 |       9753 | OnePlus Buds Z                                                          | N       |     2999 |            3 | Appario Retail Private Ltd |     191 |
|      11 |       7777 | OnePlus 9 Pro 5G (256GB)                                                | Y       |    65999 |            2 | Darshita Etel              |    4000 |
|      12 |       6477 | Ikigai: The Japanese secret to a long and happy life                    | Y       |      427 |            3 | Cloudtail India            |     123 |
|      13 |       7556 | Iphone 11 (128GB)                                                       | N       | 51300.05 |            5 | Maple Store                |    3600 |
|      14 |       1111 | Solimo Trance High Back Mesh Contemporary Office Chair (Black)          | Y       |     7599 |            4 | Cloudtail India            |    5901 |
|      15 |       2222 | Nayasa 2 in 1 Dustbin - Dry Waste and Wet Waste Dustbin (33 Ltrs) - Big | Y       |     1339 |            7 | Cloudtail India            |     189 |
|      16 |       5555 | Ben Martin Men's Relaxed Jeans                                          | N       |      698 |           12 | Maxx Store                 |     100 |
|      17 |       7777 | OnePlus 9 Pro 5G (256GB)                                                | Y       |    65999 |            2 | Darshita Etel              |    4000 |
|      18 |       6754 | Inalsa Electric Kettle Absa (Black/Silver)                              | Y       |      591 |            9 | k3stores                   |   10040 |
|      19 |       2223 | optimum whey protien                                                    | Y       |     1614 |            7 | Cloudtail India            |     245 |
|      20 |        529 | MI Mobile cover                                                         | Y       |      999 |            5 | dailyen                    |     500 |
|      21 |       5655 | Redmi 9 Activ (128GB)                                                   | N       |    10999 |            3 | Darshita Electronics       |     200 |
|      22 |       7556 | Iphone 11 (128GB)                                                       | Y       |    54900 |            7 | Sunil mobile Store         |       0 |
|      23 |       9753 | OnePlus Buds Z                                                          | N       |     4000 |            5 | sekhri telecoms            |     200 |
|      24 |       5454 | Iphone 11 (64GB)                                                        | Y       |    43999 |            7 | imagine store              |    6000 |
+---------+------------+-------------------------------------------------------------------------+---------+----------+--------------+----------------------------+---------+

Note - 1: Name the count of all the similar products as countSame.
Note - 2: Arrange the columns in ascending order.

Solution:

SELECT DISTINCT p.product_id,p.p_name,p.inStock,p.seller,q.countSame

FROM product p

INNER JOIN(SELECT product_id,p_name,inStock,COUNT(*) as countSame

FROM product 

GROUP  BY product_id,p_name,inStock

HAViNG COUNT(*)>1
          and inStock="Y") q

ON p.product_id=q.product_id

AND p.p_name=q.p_name

AND p.inStock=q.inStock

ORDER BY p.product_id,p.p_name,p.inStock,p.seller;

Output:
+------------+--------------------------------------------+---------+-----------------------+-----------+
| product_id | p_name                                     | inStock | seller                | countSame |
+------------+--------------------------------------------+---------+-----------------------+-----------+
|       2223 | optimum whey protien                       | Y       | Cloudtail India       |         2 |
|       5454 | Iphone 11 (64GB)                           | Y       | imagine store         |         2 |
|       5454 | Iphone 11 (64GB)                           | Y       | Maple Store           |         2 |
|       6754 | Inalsa Electric Kettle Absa (Black/Silver) | Y       | k3stores              |         2 |
|       7556 | Iphone 11 (128GB)                          | Y       | Kukreja Telecom Store |         2 |
|       7556 | Iphone 11 (128GB)                          | Y       | Sunil mobile Store    |         2 |
|       7777 | OnePlus 9 Pro 5G (256GB)                   | Y       | Darshita Etel         |         3 |
+------------+--------------------------------------------+---------+-----------------------+-----------+