-- HackerRank-style SQL Problem: American Cities
-- 
-- Task:
-- Query all columns for all American cities in the CITY table with populations larger than 100,000.
-- The CountryCode for America is 'USA'.
--
-- Table: CITY
-- Columns:
--   id INT
--   name VARCHAR
--   countrycode VARCHAR
--   district VARCHAR
--   population INT
--
-- Solution:

SELECT *
FROM CITY
WHERE countrycode = 'USA'
  AND population > 100000;
