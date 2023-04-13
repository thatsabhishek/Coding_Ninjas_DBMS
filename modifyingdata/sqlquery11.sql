Problem Statement :
Data for id 103 has been incorrectly entered. As a school Data manager, you have to correct this data with the correct student name and admission data.

Use the Replace command. Name should be “Lawrence” and admission_date should be 2008-11-27.

Information about the table
Table Student :
+-----+--------+--------+----------------+
| id  | Name   | gender | admission_date |
+-----+--------+--------+----------------+
| 101 | Muthu  | M      | 2015-08-26     |
| 102 | Aniket | M      | 2014-10-21     |
| 103 | Ayush  | M      | 2017-10-28     |
| 104 | Carla  | F      | 2019-10-17     |
| 105 | Kone   | M      | 2018-12-15     |
+-----+--------+--------+----------------+

Solution:
REPLACE INTO Student(id,name,gender,admission_date)
VALUE(103,"Lawrence",'M','2008-11-27');
SELECT * FROM Student;

Output:
+-----+----------+--------+----------------+
| id  | Name     | gender | admission_date |
+-----+----------+--------+----------------+
| 103 | Lawrence | M      | 2008-11-27     |
+-----+----------+--------+----------------+