-- Here the Question is that we have to print the most expensive product of Each department
-- So to solve that we used SubQuery with Alais so we can refer the outer alais to inner alias
-- IT is nexted For loop.


SELECT
  name,
  price,
  department FROM products AS p1
WHERE
  p1.price = (
    SELECT
      MAX(price)
    FROM
      products as p2
    WHERE
      p1.department = p2.department
  )


-- Without using a join or Group By we have to print the  name and the number of orders for each product 


SELECT
  name,
  (
    SELECT
      Count(*)
    FROM
      orders as o1
    WHERE
      o1.product_id = p1.id
  ) AS num_orders
FROM
  products as p1