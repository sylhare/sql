-- Transactions

CREATE TABLE widgetInventory (
  id INTEGER PRIMARY KEY,
  description TEXT,
  onhand INTEGER NOT NULL
);

CREATE TABLE widgetSales (
  id INTEGER PRIMARY KEY,
  inv_id INTEGER,
  quan INTEGER,
  price INTEGER
);

INSERT INTO widgetInventory ( description, onhand ) VALUES ( 'rock', 25 );
INSERT INTO widgetInventory ( description, onhand ) VALUES ( 'paper', 25 );
INSERT INTO widgetInventory ( description, onhand ) VALUES ( 'scissors', 25 );

SELECT * FROM widgetInventory;
SELECT * FROM widgetSales;

BEGIN TRANSACTION;
INSERT INTO widgetSales ( inv_id, quan, price ) VALUES ( 1, 5, 500 );
UPDATE widgetInventory SET onhand = ( onhand - 5 ) WHERE id = 1;
END TRANSACTION;

BEGIN TRANSACTION;
INSERT INTO widgetInventory ( description, onhand ) VALUES ( 'toy', 25 );
ROLLBACK;
SELECT * FROM widgetInventory;

-- restore database
DROP TABLE IF EXISTS widgetInventory;
DROP TABLE IF EXISTS widgetSales;

-- Performance

CREATE TABLE performance ( id INTEGER PRIMARY KEY, data TEXT );

-- Transactions makes it much faster.
BEGIN TRANSACTION;

INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );
INSERT INTO performance ( data ) VALUES ( '1000 transactions right here, copy paste for more' );

END TRANSACTION;

SELECT COUNT(*) FROM performance;

-- restore database
DROP TABLE performance;
