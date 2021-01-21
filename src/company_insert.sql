INSERT INTO customer (name, address, city, state, zip) 
  VALUES ('Fred Flintstone', '123 Cobblestone Way', 'Bedrock', 'CA', '91234');

INSERT INTO customer (name, city, state) 
  VALUES ('Jimi Hendrix', 'Renton', 'WA');

UPDATE customer SET address = '456 Rock Street', zip = '23456' WHERE id = 4;

DELETE FROM customer WHERE id = 6;
SELECT * FROM customer;