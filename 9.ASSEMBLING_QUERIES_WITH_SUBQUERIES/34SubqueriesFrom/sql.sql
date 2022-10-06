CREATE TABLE products (
  id SERIAL PRIMARY KEY,
  name VARCHAR,
  department VARCHAR,
  price INTEGER,
  weight INTEGER
);


INSERT INTO products (name, department, price, weight) VALUES
  ('Practical Fresh Shirt', 'Toys', 876.00, 3),
  ('Gorgeous Steel Towels', 'Outdoors', 412.00, 16),
  ('Rustic Plastic Bacon', 'Movies', 10.00, 6),
  ('Tasty Wooden Ball', 'Industrial', 796.00, 23),
  ('Fantastic Soft Fish', 'Tools', 10.00, 10),
  ('Incredible Granite Mouse', 'Home', 989.00, 2),
  ('Gorgeous Rubber Ball', 'Books', 801.00, 4),
  ('Generic Fresh Computer', 'Toys', 926.00, 11),
  ('Unbranded Cotton Shoes', 'Sports', 298.00, 29),
  ('Fantastic Metal Chair', 'Home', 887.00, 9),
  ('Ergonomic Metal Pizza', 'Jewelery', 463.00, 16),
  ('Ergonomic Steel Car', 'Outdoors', 53.00, 20),
  ('Licensed Steel Car', 'Movies', 664.00, 10),
  ('Tasty Metal Cheese', 'Beauty', 650.00, 17),
  ('Handcrafted Rubber Towels', 'Baby', 945.00, 6),
  ('Intelligent Metal Mouse', 'Music', 509.00, 7),
  ('Awesome Cotton Salad', 'Shoes', 211.00, 16);

SELECT
  name,
  price_weight_ratio
FROM
  (
    SELECT
      name,
      price / weight AS price_weight_ratio
    FROM
      products
  ) AS p
WHERE
  p.price_weight_ratio > 5


-- NOTE :- Whenever we use subquery in from we must provide alias otherwise we will get an error.



SELECT * 
FROM
  (
    SELECT
      MAX(price)
    FROM
      products
  ) AS p

-- HERE WE WILL JUST GETTING ONE ROW AND ONE CLOUMN AND FOR THAT WE CANNOT USE like SELCT NAME< PRODUCT IT WILL BREAK SO FOR THIS KIND OF SUBQUERY WE HAVE TO USE (*)



SELECT user_id, COUNT(*) FROM  orders GROUP BY  user_id



SELECT AVG(p.order_count) FROM (SELECT user_id,  COUNT(*) AS order_count FROM  orders GROUP BY  user_id) AS p
SELECT (p.order_count) FROM (SELECT user_id,  COUNT(*) AS order_count FROM  orders GROUP BY  user_id) AS p
SELECT order_count FROM (SELECT user_id,  COUNT(*) AS order_count FROM  orders GROUP BY  user_id) AS p
 