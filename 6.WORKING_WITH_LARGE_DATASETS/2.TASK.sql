
SELECT * FROM orders;
SELECT * FROM products;
SELECT * FROM users


-- 1. PRINT THE NUMBER OF PAOD AND UNPAID ORDERS.


SELECT paid, count(*) from orders group by paid;



-- HERE WE HAVE TO JOIN TWO TANLE AND LIST USER FIRST & LAST NAME AND WHEATHER THEY HAVE PAID OR NOT.

SELECT
  first_name,
  last_name,
  paid
FROM
  users
  JOIN orders ON users.id = orders.user_id