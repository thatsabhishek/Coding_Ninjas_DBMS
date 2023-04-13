Problem Statement:
Consider a table named products, formulate a query deleting the record where product_id = 596 or 700.

Information about the table:
Table products :
 product_id | pname    |   p_mfd    
------------+----------+------------
        345 | oneplus  | 2021-01-01
        596 | iphone   | 2021-07-22
        132 | MI       | 2021-03-09
        482 | vivo     | 2021-09-01
        700 | oppo     | 2021-04-14
Note: Print the complete table after deleting the data.

Solution:
DELETE FROM products WHERE product_id IN (596,700);
select * from products;

Output:
DELETE 2
 product_id | pname         |   p_mfd    
------------+---------------+-----------
        345 | oneplus       | 2021-01-01
        132 | MI            | 2021-03-09
        482 | vivo          | 2021-09-01