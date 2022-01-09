SELECT (
  SELECT MAX(price) FROM products
),(
  SELECT AVG(price) FROM products
)


SELECT (
  SELECT MAX(price) FROM products
)/(
  SELECT AVG(price) FROM products
) AS MAX_AVG_RATIO


-- When we are usinh a subquery but if we place a subquery inside of a select we can get away withput putting any form, a join or anythinh else like that.

-- If the subquery return a single value but if more than one value means col of values or group of columns than we will get error.