Problem Statement :
Given a table named Bank, write a query to change the existing column person_id to Pid VARCHAR(50).

table Bank
   Attribute  |  Datatype
   person_id  |  INT (Primary Key)
   full_name  |  VARCHAR(30)
   acc_no     |  INT 
   last_trans |  VARCHAR (200)
   phone_no   |  VARCHAR (200)

Syntax to describe the above table.

DESC <TABLE_NAME>;


Note: Write keywords of syntax in uppercase alphabets.

Solution :
ALTER TABLE Bank CHANGE COLUMN person_id Pid VARCHAR(50);
DESC Bank;

Output:
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| Pid        | varchar(50)  | YES  |     | NULL    |       |
| full_name  | varchar(30)  | YES  |     | NULL    |       |
| acc_no     | int          | YES  |     | NULL    |       |
| last_trans | varchar(200) | YES  |     | NULL    |       |
| phone_no   | varchar(200) | YES  |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+