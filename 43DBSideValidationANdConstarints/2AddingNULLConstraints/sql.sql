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


ALTER TABLE users ALTER COLUMN phone TYPE VARCHAR(40);
