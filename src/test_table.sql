-- CREATE TABLE
CREATE TABLE example (
  a INTEGER,
  b TEXT
);

INSERT INTO example VALUES ( 1, 'a' );
INSERT INTO example VALUES ( 2, 'b' );
INSERT INTO example VALUES ( 3, 'c' );
SELECT * FROM example;


-- DROP TABLE

CREATE TABLE test ( a TEXT, b TEXT );
INSERT INTO test VALUES ( 'one', 'two' );
SELECT * FROM test;

DROP TABLE test;

DROP TABLE IF EXISTS test;


-- INSERT INTO

CREATE TABLE test ( a INTEGER, b TEXT, c TEXT );

INSERT INTO test VALUES ( 1, 'This', 'Right here!' ); 
INSERT INTO test ( b, c ) VALUES ( 'That', 'Over there!' ); 

INSERT INTO test DEFAULT VALUES; -- Default value is NULL

INSERT INTO test ( a, b, c ) SELECT id, name, description from item; -- item is a table in the test db.

SELECT * FROM test;


-- DELETE FROM

SELECT * FROM test;
DELETE FROM test WHERE a = 3;

SELECT * FROM test WHERE a = 1;
DELETE FROM test WHERE a = 1;


-- NULL
-- A special value that is handle differently

SELECT * FROM test;

SELECT * FROM test WHERE a IS NULL;
SELECT * FROM test WHERE a IS NOT NULL;

INSERT INTO test ( a, b, c ) VALUES ( 0, NULL, '' );
SELECT * FROM test WHERE b IS NULL;

SELECT * FROM test WHERE c = '';
SELECT * FROM test WHERE c IS NULL;

DROP TABLE IF EXISTS test;
CREATE TABLE test (
  a INTEGER NOT NULL,
  b TEXT NOT NULL,
  c TEXT
);

INSERT INTO test VALUES ( 1, 'this', 'that' );
SELECT * FROM test;

INSERT INTO test ( b, c ) VALUES ( 'one', 'two' ); -- won't work cause "a" can't be NULL
INSERT INTO test ( a, c ) VALUES ( 1, 'two' ); -- won't work cause "b" can't be NULL
INSERT INTO test ( a, b ) VALUES ( 1, 'two' );
DROP TABLE IF EXISTS test;


-- Constraints
-- Rules for the behaviour of the db, may depend on configuraiton

DROP TABLE IF EXISTS test;
CREATE TABLE test ( a TEXT UNIQUE NOT NULL, b TEXT NOT NULL, c TEXT DEFAULT 'panda' );

INSERT INTO test ( a, b ) VALUES ( 'one', 'two' );
INSERT INTO test ( a, b ) VALUES ( 'two', 'two' );
INSERT INTO test ( a, b, c ) VALUES ( 'three', 'two', NULL );

SELECT * FROM test;


-- ALTER TABLE
-- To alter the schema of a table after it has been created

DROP TABLE IF EXISTS test;
CREATE TABLE test ( a TEXT, b TEXT, c TEXT );
INSERT INTO test VALUES ( 'one', 'two', 'three');
INSERT INTO test VALUES ( 'two', 'three', 'four');
INSERT INTO test VALUES ( 'three', 'four', 'five');
SELECT * FROM test;

ALTER TABLE test ADD d TEXT;
ALTER TABLE test ADD e TEXT DEFAULT 'panda';
SELECT * FROM test;


-- ID
-- Define the id of the table at creation on sql lite.
-- PRIMARY KEY wil create the id value with sequential number
-- If a ROW gets deleted the id gets updated automatically

DROP TABLE IF EXISTS test;
CREATE TABLE test (
  id INTEGER PRIMARY KEY, 
  n INTEGER,
  alphabet TEXT
);
INSERT INTO test (n, alphabet) VALUES ( 10, 'a' );
INSERT INTO test (n, alphabet) VALUES ( 11, 'b' );
DELETE FROM test WHERE n = 11;
INSERT INTO test (n, alphabet) VALUES ( 12, 'c' );
INSERT INTO test (n, alphabet) VALUES ( 13, 'c' );
SELECT * FROM test;


