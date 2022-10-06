SELECT
  id
FROM
  orders
  WHERE product_id IN (
    SELECT id FROM products HERE price / weight > 500
  )


-- STRUCTURE of data allowed to be returned by subquery changes depending on the comparisonon operator



-- WE HAVE TO PRINT THE NAME AND PRODUCTS OF PRICE WHERE THE PRICE IS GREATER THAN THE AVERAGE PRICE.
SELECT
  name, price
FROM
  products
WHERE
  price > (
    SELECT
      AVG(price)
    FROM
      products
  )