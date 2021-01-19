-- WHERE

SELECT Name, Continent, Population FROM Country 
  WHERE Population < 100000 ORDER BY Population DESC;
SELECT Name, Continent, Population FROM Country 
  WHERE Population < 100000 OR Population IS NULL ORDER BY Population DESC;
SELECT Name, Continent, Population FROM Country 
  WHERE Population < 100000 AND Continent = 'Oceania' ORDER BY Population DESC;


-- LIKE creates a mask with % to filter the results
-- %word% -> has word in it
-- word% -> starts with word
-- %word -> ends with word
-- _o% -> second letter from start is "o"
SELECT Name, Continent, Population FROM Country 
  WHERE Name LIKE '%island%' ORDER BY Name;    
  

-- IN 
SELECT Name, Continent, Population FROM Country 
 WHERE Continent IN ( 'Europe', 'Asia' ) ORDER BY Name;


-- SELECT DISTINCT
-- Using the SELECT DISTINCT statement, you will get only unique results. 

SELECT DISTINCT Continent FROM Country;

-- ORDER BY
-- The columns after ORDER BY sets the priority for the order within 

SELECT Name FROM Country ORDER BY Name ASC;
SELECT Name, Continent FROM Country ORDER BY Continent, Name;
SELECT Name, Continent, Region FROM Country ORDER BY Continent DESC, Region, Name;


