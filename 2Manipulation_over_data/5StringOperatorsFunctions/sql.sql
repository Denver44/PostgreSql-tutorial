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

SELECT  country || name,  CONCAT(name, country),  LOWER(country),  UPPER(name),  LENGTH(NAME), FROM  cities

  
SELECT
  country || ', ' || name AS country_name,
  CONCAT(name, '-', country) AS name_country,
  CONCAT(UPPER(name), '-', LOWER(country)) AS name_country_2,
  LOWER(country) as LOWERCASE_COUNTRYNAME,
  UPPER(name),
  LENGTH(NAME),
  population / area AS population_density
FROM
  cities


-- FUNCTIONS
  -- CONCAT
  -- LOWER
  -- UPPER 
  -- LENGTH
-- THIS ARE THE FUNCTION WHICH WE CAN APPLY ON THE CLOUMN IN SELECT STATEMENT