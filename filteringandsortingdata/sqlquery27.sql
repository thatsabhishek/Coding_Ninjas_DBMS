Information about the table:
Table e_transactions:

+----------+--------------+---------------+-------+---------+
| order_id | ordered_time | shipping_time | cost  | cust_id |
+----------+--------------+---------------+-------+---------+
| CN70101  | 2021-02-22   | 2021-02-28    |  5679 | Cid065  |
| CN70102  | 2021-02-22   | 2021-02-25    |  7999 | Cid019  |
| CN70103  | 2021-06-14   | 2021-06-18    |  1300 | Cid07   |
| CN70104  | 2021-07-07   | 2021-07-11    | 13299 | Cid098  |
| CN70105  | 2021-07-07   | 2021-07-12    |  1754 | Cid032  |
+----------+--------------+---------------+-------+---------+

Problem Statement:
List down the orders ids with their shipping time which were ordered before 30th June 2021 sort them in ascending order w.r.t. cost and in descending order w.r.t. time the purchase was made.

Answer:
SELECT order_id, shipping_time FROM e_transactions WHERE ordered_time<'2021-06-30' 
ORDER BY cost, ordered_time desc;

Output:
 order_id | shipping_time 
----------+---------------
 CN70103  | 2021-06-18
 CN70101  | 2021-02-28
 CN70102  | 2021-02-25