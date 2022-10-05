------------------------------------------------- String Operators & Functions  --------------------------------------------------------

-- FUNCTIONS
  -- CONCAT
  -- LOWER
  -- UPPER 
  -- LENGTH
-- This are the functions which we can apply on the column in Select Statement.


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


