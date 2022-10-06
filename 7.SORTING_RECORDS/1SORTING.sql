

-- SORT BY is used to sort the table by a particlaur mentioned cloumn
-- As i have put - so it will sort in DESCENDING ORDER
SELECT *
FROM
  products
ORDER BY
  -price

-- OR

SELECT
  *
FROM
  products
ORDER BY
  price DESC


--ASCENDING ORDER
SELECT
  *
FROM
  products
ORDER BY
  price

  -- OR

  SELECT
  *
FROM
  products
ORDER BY
  price ASC

-- SORTING TWO ITEM AT ONE TIME

SELECT
  *
FROM
  products
ORDER BY
  price, weight 

-- HERE first item will be sort by price and if two price is same then it will be sort by weight now we can additonally sort it on the basis of weight like 

SELECT
  *
FROM
  products
ORDER BY
  price, weight DESC


  SELECT
  *
FROM
  products
ORDER BY
  price DESC,
  weight DESC