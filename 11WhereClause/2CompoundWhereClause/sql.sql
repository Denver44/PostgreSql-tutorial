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



-- COMPOUND WHERE CLAUSE
SELECT name,area FROM cities WHERE area BETWEEN 2000 AND 3000

SELECT name,area FROM cities WHERE name IN ('Delhi', 'Shanghai')
SELECT name,area FROM cities WHERE name NOT IN ('Delhi', 'Shanghai')
SELECT name,area FROM cities WHERE area NOT IN (3043, 5600) AND name = 'Delhi';
SELECT name,area FROM cities WHERE area NOT IN (3043, 5600) AND name in ('Delhi', 'Sao Paulo');
SELECT name,area FROM cities WHERE area NOT IN (3043, 5600) OR name in ('Delhi', 'Sao Paulo');
SELECT name,area FROM cities WHERE area NOT IN (3043, 4015) OR name in ('Delhi');

SELECT name, population / area as population_density FROM cities WHERE population / area > 6000;

-- KEYWORDS
-- 1.AND
-- 2.OR
-- 3. BETWEEN
-- 4. NOT IN
-- 5. IN
-- There are many more 
-- We can do calculations in WHERE Clause also.
-- We can add all mathematical and string operators operation in WHERE

