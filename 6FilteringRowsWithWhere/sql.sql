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


-- OPERATORS

-- GREATER
SELECT name,area FROM cities WHERE area > 4000


-- EQUAL 
SELECT name,area FROM cities WHERE area = 8233

-- NOT EQUAL 
SELECT name,area FROM cities WHERE area != 8233
SELECT name,area FROM cities WHERE area <> 8233



-- WHERE KEYWORD is used to filter data
-- The execeution of the baove statements is like

-- 1. FROM cities (execute)
-- 2. WHERE area > 4000 (execute)
-- 3. SELECT name,area (execute)