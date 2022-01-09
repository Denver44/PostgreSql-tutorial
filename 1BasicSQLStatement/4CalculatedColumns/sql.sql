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

SELECT country,  name,  population / area AS population_density FROM  cities

-- We can do calcualtion also in SQL
-- There are many opertaors we can use like

--  +
--  - 
--  * 
--  / 
--  ^ (Exponent) 
--  |/ (Square root) 
--  @ (absolute Value)
--  % (Remainder) 

-- KEYWORD AS
-- AS operator is used to RENAME the column Name 
