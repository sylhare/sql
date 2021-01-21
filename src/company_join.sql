-- Sale example
SELECT * FROM sale;
SELECT * FROM item;

SELECT s.id AS sale, s.date, i.name, i.description, s.price 
  FROM sale AS s
  JOIN item AS i ON s.item_id = i.id
  ;

-- Junction Table
-- When Joining multiple tables together, the junction is based on the 'FROM' table.
-- Getting information from all three table based on the sales id.

SELECT c.name AS Cust, c.zip, i.name AS Item, i.description, s.quantity AS Quan, s.price AS Price
  FROM sale AS s
  JOIN item AS i ON s.item_id = i.id
  JOIN customer AS c ON s.customer_id = c.id
  ORDER BY Cust, Item
;

-- a customer without sales
INSERT INTO customer ( name ) VALUES ( 'Jane Smith' );
SELECT * FROM customer;

-- left join to get everything from the Customer table (even those with no sales)
SELECT c.name AS Cust, c.zip, i.name AS Item, i.description, s.quantity AS Quan, s.price AS Price
  FROM customer AS c
  LEFT JOIN sale AS s ON s.customer_id = c.id
  LEFT JOIN item AS i ON s.item_id = i.id
  ORDER BY Cust, Item
;


