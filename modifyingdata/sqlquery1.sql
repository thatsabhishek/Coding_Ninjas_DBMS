Problem statement :
Formulate a query to add records to table tutorials.

  Attribute       |  Data Type |  Value to be added
  tutorial_title  | VARCHAR    |  "Learn MySQL"
  tutorial_author | VARCHAR    |  "Balachandra Raju"
  submission_date | DATE       |  "01-09-2021"

Note: Print the table after adding the values.

Solution :
INSERT INTO tutorials VALUE('Learn MySQL','Balachandra Raju','01-09-2021'); 
SELECT * FROM tutorials;

Output :
+----------------+------------------+-----------------+
| tutorial_title | tutorial_author  | submission_date |
+----------------+------------------+-----------------+
| Learn MySQL    | Balachandra Raju | 01-09-2021      |
+----------------+------------------+-----------------+
