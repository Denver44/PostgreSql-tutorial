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

INSERT INTO products(name,department,weight) VALUES (
'Pants', 'Clothes',1
)


--We can add NULL Constraint by two way.

-- 1st WAY
CREATE TABLE products (
	id SERIAL PRIMARY KEY,
	name VARCHAR(40),
	department VARCHAR(40),
	price INTEGER NOT NULL,
	weight INTEGER
)
-- 2nd WAY

ALTER TABLE products ALTER COLUMN price SET NOT NULL


-- TO CHECK A VALUE IS NULL USE IS not =
UPDATE products SET PRICE = 999 WHERE price IS NULL -- WORK
UPDATE products SET PRICE = 999 WHERE price = NULL -- NOT WORK



INSERT INTO products(name,department,price,weight) VALUES (
'Tie', 'Clothes',10 , (0.5::NUMERIC)
)
