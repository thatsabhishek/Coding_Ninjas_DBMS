Problem Statement:
Get the product_id and the number of products ordered for each product_id.

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

Table orders:
Attributes list:
    Attributes        |    Data Type
    order_id          |    INT (PRIMARY KEY)
    product_id        |    INT
    customer_id       |    INT
    payment_date      |    DATE
    est_delivery_date |    DATE
    transaction_days  |    INT

Data list:
+----------+------------+-------------+----------------+--------------+-------------------+----------------+
| order_id | product_id | customer_id | checkout_price | payment_date | est_delivery_date | transaction_id |
+----------+------------+-------------+----------------+--------------+-------------------+----------------+
| oid1     |       7777 | cid3        |          63999 | 2021-11-12   | 2021-11-14        | tid1           |
| oid2     |       7556 | cid1        |          51300 | 2021-11-09   | 2021-11-13        | tid2           |
| oid3     |       6754 | cid5        |            591 | 2021-11-24   | 2021-12-03        | tid3           |
| oid4     |       7556 | cid3        |          51300 | 2021-11-10   | 2021-11-14        | tid4           |
| oid5     |       6477 | cid2        |            500 | 2021-11-06   | 2021-11-09        | tid5           |
| oid6     |       2223 | cid7        |           1514 | 2021-11-27   | 2021-12-04        | tid6           |
+----------+------------+-------------+----------------+--------------+-------------------+----------------+

Information about the table transactions
Attributes list:
    Attributes         |   Data Type
    transaction_id     |   VARCHAR(20) (PRIMARY KEY)
    transaction_status |   VARCHAR(25)

Data list:
+----------------+--------------------+------------------+
| transaction_id | transaction_status | transaction_type |
+----------------+--------------------+------------------+
| tid1           | completed          | online           |
| tid2           | not completed      | cod              |
| tid3           | not completed      | cod              |
| tid4           | completed          | online           |
| tid5           | completed          | online           |
| tid6           | not completed      | cod              |
+----------------+--------------------+------------------+

Table customer:
Attributes list:
    Attributes        |    Data Type
    customer_id       |    VARCHAR(20) (PRIMARY KEY)
    customer_name     |    VARCHAR(25)
    phone_no          |    INT
      city            |    VARCHAR(200)
    pin_code          |    INT

Data list:
+-------------+-----------------+-----------+-----------+----------+
| customer_id | customer_name   | phone_no  | city      | pin_code |
+-------------+-----------------+-----------+-----------+----------+
| cid1        | Riya Khanna     | 987655443 | Delhi     |   110005 |
| cid2        | Sahil Kumar     | 987657643 | Mumbai    |   230532 |
| cid3        | Vishwas Aanand  | 987658871 | Kolkata   |   700007 |
| cid4        | Harleen Kaur    | 987677585 | Bengaluru |   560006 |
| cid5        | Priyanshu Gupta | 956758556 | Hyderabad |   500012 |
| cid6        | Lokesh Ravaliya | 998295561 | Bikaner   |   334003 |
| cid7        | Kuldeep Daga    | 997757204 | Mandsaur  |   458001 |
| cid8        | Vaibhav Jain    | 987677757 | Jalandhar |   144002 |
| cid9        | Lokesh Gupta    | 956758500 | Hyderabad |   500013 |
+-------------+-----------------+-----------+-----------+----------+

Solution:
SELECT product_id, COUNT(product_id)
FROM orders
GROUP BY product_id;

Output:
+------------+-------------------+
| product_id | COUNT(product_id) |
+------------+-------------------+
|       7777 |                 1 |
|       7556 |                 2 |
|       6754 |                 1 |
|       6477 |                 1 |
|       2223 |                 1 |
+------------+-------------------+