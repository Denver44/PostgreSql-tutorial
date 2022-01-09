
-- QUESTION : SHOW THE NAME, DEPARTMENT AND PRICE OF PROUCTS THAT ARE MORE EXPENSIVE THAN ALL PRODUCTS IN THE INDUSTRIAL DEPARTMENT


SELECT name, department , price
FROM products
WHERE price > ALL (
  SELECT  price FROM products WHERE department = 'Industrial' 
)

SELECT name
FROM products
WHERE SOME > ALL (
  SELECT  price FROM products WHERE department = 'Industrial' 
)

SELECT
  price
FROM
  products
WHERE
  department = 'Industrial'


  SELECT
  name,
  price,
  department
FROM
  products
WHERE
  price > SOME (
    SELECT
      price
    FROM
      products
    WHERE
      department = 'Industrial'
  )