CREATE TABLE cities (
  name VARCHAR(50),
  country VARCHAR(50),
  population INTEGER,
  area INTEGER
);


INSERT INTO
  cities (name, country, population, area)
VALUES
  ('Tokyo', 'JAPAN', 385050000, 8233);
  ('Delhi', 'India', 28125000, 2240),
  ('Shanghai', 'China', 22125000, 4015),
  ('Sao Paulo', 'Brzail', 20935000, 3043);


-- USE SELECT  to reterive Data from table and (*) means u want all the data from all the columns
SELECT * FROM cities


-- To print the data of cloumn name, area we have to write name and area column of data
SELECT name, area FROM cities

-- We can Print a cloumn multiple times
SELECT country, name, area, population, country FROM cities

-- KEYWORDS
-- 1. SELECT
-- 2. FROM
-- SELECT : In SELECT WE WRITE THE CLOUMN NAME FOR WHICH COLUMN WE WANT TO PRINT DATA
-- FROM : In FROM WE WRITE THE TABLE NAME FROM WHICH WE EXTRACT DATA.