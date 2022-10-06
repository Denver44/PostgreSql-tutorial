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
  price,
  (SELECT price FROM products WHERE id = 3)
FROM
  products
WHERE
  price > 876

-- NOTE :- In select statement we can use subquery which return a single value.