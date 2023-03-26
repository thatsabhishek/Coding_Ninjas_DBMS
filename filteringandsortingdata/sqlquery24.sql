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
Arrange the above-given data in descending order by Shipping time.

Answer:
SELECT * FROM e_transactions ORDER BY shipping_time desc;

Output:
 order_id | ordered_time | shipping_time | cost  | cust_id 
----------+--------------+---------------+-------+---------
 CN70105  | 2021-07-07   | 2021-07-12    |  1754 | Cid032
 CN70104  | 2021-07-07   | 2021-07-11    | 13299 | Cid098
 CN70103  | 2021-06-14   | 2021-06-18    |  1300 | Cid07
 CN70101  | 2021-02-22   | 2021-02-28    |  5679 | Cid065
 CN70102  | 2021-02-22   | 2021-02-25    |  7999 | Cid019