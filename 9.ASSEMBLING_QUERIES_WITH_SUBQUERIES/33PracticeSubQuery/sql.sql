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


-- QUESTION WRITE a query that prints the name and price for each phones. In addition, print out the ratio of the phones proce against max price of all phones (so price / max price ). Rename this third column to price_ratio.

SELECT
name, price, price / (SELECT MAX(price) FROM phones) AS price_ratio
FROM phones


-- QUESTION : CALCULATE THE AVERAGE PRICE OF PHONES FOR EACH MANUFACTURER> THEN PRINT THE HIGHEST AVERAGE PRICE> RENAME THIS VALUE TO max_average_price

SELECT MAX(p.max_price) AS max_average_price
FROM (SELECT manufacturer, AVG(price) AS max_price FROM phones GROUP BY manufacturer) as 
p


SELECT
  name,
  price
FROM
  phones
WHERE
  price > (
    SELECT
      price
    FROM
      phones
    WHERE
      name = 'S5620 Monte'
  )



SELECT
  name,
  price,
  department
FROM
  products
WHERE
  department NOT IN (
    SELECT
      department
    FROM
      products
    WHERE
      price < 100
  )


  SELECT
  name,
  price,
  department
FROM
  products
WHERE
  price < 100



-- 

SELECT name
FROM phones
WHERE price > ALL (
 SELECT
  price
FROM
  phones
WHERE
  manufacturer = 'Samsung'
)

-- WITHOUT USING FROM


SELECT (
  SELECT MAX(price) FROM phones
) AS max_price ,(
  SELECT MIN(price) FROM phones
)AS min_price ,
(
  SELECT AVG(price) FROM phones
) AS avg_price