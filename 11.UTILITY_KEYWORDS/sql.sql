-- GREATEST
SELECT  GREATEST(30, 10, 20);

SELECT name, weight , GREATEST(30, weight * 2) AS shiping_charge FROM products;

name	                weight	shiping_charge
Practical Fresh Shirt	3	        30
Gorgeous Steel Towels	16	        32
Rustic Plastic Bacon	6	        30
Tasty Wooden Ball	    23	        46

-- LEAST 

SELECT  LEAST(30, 10, 20);

SELECT name, price , LEAST(100, price * 0.5) AS discount_pirce FROM products;

name	                price	discount_pirce
Practical Fresh Shirt	876	        100
Gorgeous Steel Towels	412	        100
Rustic Plastic Bacon	10	        5.0
Tasty Wooden Ball	    796	        100
Fantastic Soft Fish	    10	        5.0



-- CASE


SELECT
  name,
  price,
  (
    CASE
      WHEN price > 600 THEN 'high'
      WHEN price > 300 THEN 'medium'
      ELSE 'cheap'
    END
  ) AS filter_price
FROM
  products;

name	price	filter_price
Practical Fresh Shirt	876	high
Gorgeous Steel Towels	412	medium
Rustic Plastic Bacon	10	cheap
Tasty Wooden Ball	796	high



SELECT
  name,
  price,
  (
    CASE
      WHEN price > 600 THEN 'high'
      WHEN price > 300 THEN 'medium'
    END
  ) AS filter_price
FROM
  products;


  name	price	filter_price
Practical Fresh Shirt	876	high
Gorgeous Steel Towels	412	medium
Rustic Plastic Bacon	10	null
Tasty Wooden Ball	796	high





SELECT
  name,
  price,
  weight,
  (
    CASE
      WHEN price > 600
      AND weight > 23 THEN 'high'
      WHEN price > 600
      AND weight < 23 THEN 'high-OK'
      WHEN price > 300 THEN 'medium'
    END
  ) AS filter_price
FROM
  products;


name	price	weight	filter_price
Practical Fresh Shirt	876	3	high-OK
Gorgeous Steel Towels	412	16	medium
Rustic Plastic Bacon	10	6	null
Tasty Wooden Ball	796	23	medium
