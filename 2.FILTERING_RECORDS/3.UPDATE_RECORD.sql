CREATE TABLE cities (
  name VARCHAR(50),
  country VARCHAR(50),
  population INTEGER,
  area INTEGER
);

INSERT INTO
  cities (name, country, population, area)
VALUES
  ('Tokyo', 'JAPAN', 385050000, 8233),
  ('Delhi', 'India', 28125000, 2240),
  ('Shanghai', 'China', 22125000, 4015),
  ('Sao Paulo', 'Brzail', 20935000, 3043);

------------------------------------------------- UPDATE Data with Where Clause in SQL --------------------------------------------------------

-- KEYWORDS : 1. UPDATE  2. SET

-- UPDATE KEYWORD TELLS THAT WE ARE GOING TO UPDATE THE DATA
-- SET ACTUALLY HELP US TO SET THE NEW WALE


UPDATE cities SET population = 39505000 WHERE name="Tokyo"


------------------------------------------------- UPDATE Data with Compound Clause in SQL --------------------------------------------------------

UPDATE  cities SET  name = 'Shangahi',  country = 'United States' WHERE  name = 'Delhi'  AND country = 'India'
UPDATE  cities SET  population = 5000000 WHERE  name = 'Shanghai'  AND country = 'China'
UPDATE  cities SET  population = 2500000 WHERE  name = 'Shanghai'  AND country = 'United States'