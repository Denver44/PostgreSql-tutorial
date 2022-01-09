CREATE TABLE products (
	id SERIAL PRIMARY KEY,
	name VARCHAR(40),
	department VARCHAR(40),
	price INTEGER,
	weight INTEGER
)

INSERT INTO products(name,department,price,weight) VALUES (
'Shirt', 'Clothes', 20,1
)