






-- OFFSET is used to skip the data like in mongodb we use skip same
-- LIMIT is used to limit the number of response same in mongodb we have

  SELECT
  *
FROM
  products
  LIMIT 5 

SELECT
  *
FROM
  products
  OFFSET 5 

  SELECT
  *
FROM
  products
ORDER BY
  price,
  weight
  LIMIT 5 OFFSET 5 


-- QUESTION WE HAVE TO PRINT THE 2nd MOST AND 3rd Most Expensive Phone and we have to print their name only.


CREATE TABLE phones(
  id SERIAL,
  name VARCHAR(50),
  manufacturer VARCHAR(50),
  price INTEGER,
  units_sold INTEGER
)

INSERT INTO phones(name, manufacturer, price, units_sold) VALUES
('N1280', 'Nokia', 199, 1925),
('Iphone 4', 'Apple', 399, 9436),
('Galaxy S', 'Samsung', 299, 2359),
('S5620 Monte', 'Samsung', 250, 2385),
('N8', 'Nokia', 150, 7543),
('Droid', 'Motorola', 150, 8395),
('Wave S8500', 'Samsung', 175, 9259)





  SELECT
  name
FROM
  phones
ORDER BY
  price DESC
LIMIT
  2 OFFSET 1