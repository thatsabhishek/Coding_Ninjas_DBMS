Information about the table:
Table Customer:

+---------+------------------+-----------------------+--------+-----------+---------+----------------+
| cust_id | cname            | Address               | Gender | City      | Pincode | TotalOrdersYet |
+---------+------------------+-----------------------+--------+-----------+---------+----------------+
|     546 | Rakesh Matam     | Bongora, kamrup rural | M      | Guwahati  |  781015 |              3 |
|    1111 | Kuldeep Ravaliya | Bongora, kamrup rural | M      | Guwahati  |  781015 |              7 |
|     670 | Sugam Sehgal     | Lajpat Nagar          | M      | Jalandhar |  144001 |              2 |
|    1110 | Sumit Mishra     | Bongora, kamrup rural | M      | Guwahati  |  781015 |              1 |
|     890 | Lokesh Daga      | Ashok Nagar           | M      | Jalandhar |  144003 |              4 |
|     700 | Riya Gupta       | Dilbagh Nagar         | F      | Jalandhar |  144002 |              5 |
|    1251 | Ram Kumar        | Dilbagh Nagar         | M      | Jalandhar |  144002 |              1 |
|    1300 | Shayam Singh     | Ludhiana H.O          | M      | Ludhiana  |  141001 |             15 |
|     245 | Neelabh Shukla   | Ashok Nagar           | M      | Jalandhar |  144003 |             10 |
|     210 | Barkha Singh     | Dilbagh Nagar         | F      | Jalandhar |  144002 |              1 |
|     500 | Rohan Arora      | Ludhiana H.O          | M      | Ludhiana  |  141001 |              7 |
+---------+------------------+-----------------------+--------+-----------+---------+----------------+

Problem Statement:
List out the unique values for the gender attribute using Group by clause.

Solution:
SELECT gender FROM customer GROUP BY gender;

Output:
+--------+
| gender |
+--------+
| M      |
| F      |
+--------+