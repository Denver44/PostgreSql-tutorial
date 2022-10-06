
SELECT
  first_name
FROM
  users
  JOIN (
    SELECT
      user_id
    FROM
      orders
    WHERE
      product_id = 3
  ) AS P ON p.user_id = users.id



  -- IN JOIN ANY subquery that return data must be compatible with the 'ON" Clause
  -- We have to provide an alias for JOIN clause