Problem Statement
Given the table cities, form a query using REPLACE, to update/add the given data:
  Attribute     |  Updated value
     id         |       4
     cname      |     Phoenix
     population |     1768980

Information about the table
Table cities :
+------+----------+------------+
| id   | cname    | population |
+------+----------+------------+
|    1 | chicago  | 2746388    |
|    2 | New York | 8483190    |
|    5 | LA       | 3689867    |
+------+----------+------------+

Solution:
REPLACE INTO cities(id,cname,population)
VALUE(4,'Phoenix',1768980);
SELECT * FROM cities;

Ouput:
+------+----------+------------+
| id   | cname    | population |
+------+----------+------------+
|    1 | chicago  | 2746388    |
|    2 | New York | 8483190    |
|    5 | LA       | 3689867    |
|    4 | Phoenix  | 1768980    |
+------+----------+------------+