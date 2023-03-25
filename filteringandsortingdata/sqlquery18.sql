Information about the table:
Table Emp_data:

+---------+------------------+------+----------+-----------------+-----------+
| emp_id |     emp_name     | dept | contract |      email      | hometown   |
+--------+------------------+------+----------+-----------------+------------+
|    546 | Rakesh Matam     | D1   | FTE      | fabcd1@xyz.com  | Patna      |
|   1111 | Kuldeep Ravaliya | D3   | Intern   | intdef1@xyz.com | Indore     |
|    670 | Sugam Sehgal     | D4   | FTE      | fabcd3@xyz.com  | Himachal   |
|   1110 | Sumit Mishra     | D3   | Intern   | intdef2@xyz.com | Patna      |
|    890 | Lokesh Daga      | D2   | FTE      | fabcd5@xyz.com  | Bikaner    |
|    700 | Rakesh Matam     | D3   | FTE      | fabcd6@xyz.com  | Ludhiana   |
|   1251 | Ram Kumar        | D4   | FTE      | fabcd7@xyz.com  | Guwahati   |
|   1300 | Shayam Singh     | D2   | Intern   | intdef3@xyz.com | Ludhiana   |
|    245 | Neelabh Shukla   | D4   | FTE      | fabcd8@xyz.com  | Kota       |
|    210 | Barkha Singh     | D3   | FTE      | fabcd9@xyz.com  | Mumbai     |
|    500 | Rohan Arora      | D5   | Intern   | intdef4@xyz.com | Jalandhar  |
+--------+------------------+------+----------+-----------------+------------+

Problem Statement:
List down all the employee id’s and names whose Email contains ‘bcd’ and belongs to department D3 or D4 but aren’t from Himachal, Guwahati.

Answer:
Select emp_id, emp_name FROM emp_data WHERE email LIKE '%bcd%' 
AND dept IN ('D3','D4') 
AND hometown NOT IN ('Himachal','Guwahati');

Output:
+--------+----------------+
| emp_id | emp_name       |
+--------+----------------+
|    700 | Rakesh Matam   |
|    245 | Neelabh Shukla |
|    210 | Barkha Singh   |
+--------+----------------+