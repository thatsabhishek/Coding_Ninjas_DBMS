Problem Statement:
How many orders are currently being delivered in December 2021?

Information about the tables:
Given below is a database of a newly established e-commerce website. The database contains multiple tables i.e. products, orders, transactions, and customer. The information about required tables is given below

Table orders:
Attributes list:
   Attributes         |  Data Type
     order_id         |   INT (Primary key)
    product_id        |   INT
    customer_id       |   INT
    payment_date      |   DATE 
    est_delivery_date |   DATE
    transaction_days  |   INT

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

Solution:
select count(order_id) as orders_delivered from orders where est_delivery_date >= '2021-12-01' and est_delivery_date < '2021-12-31';

Output:
+------------------+
| orders_delivered |
+------------------+
|                2 |
+------------------+