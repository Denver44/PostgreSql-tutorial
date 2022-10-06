




-- UNION AND INTERSECTIONS


SELECT
  *
FROM
  products
ORDER BY
  price / weight DESC
LIMIT
  4



  SELECT
  *
FROM
  products
ORDER BY
  price  DESC
LIMIT
  4




(SELECT
  *
FROM
  products
ORDER BY
  price / weight DESC
LIMIT
  4)

UNION


(  SELECT
  *
FROM
  products
ORDER BY
  price  DESC
LIMIT
  4)

-- HERE THE ALL Keyword help us to list the duplicate record otherwsie union will list ou the unique elements only

  (
  SELECT
    *
  FROM
    products
  ORDER BY
    price / weight DESC
  LIMIT
    4
)
UNION ALL
  (
    SELECT
      *
    FROM
      products
    ORDER BY
      price DESC
    LIMIT
      4
  )


  -- INTERSECTION

  (
  SELECT
    *
  FROM
    products
  ORDER BY
    price / weight DESC
  LIMIT
    4
)
INTERSECT ALL
  (
    SELECT
      *
    FROM
      products
    ORDER BY
      price DESC
    LIMIT
      4
  )