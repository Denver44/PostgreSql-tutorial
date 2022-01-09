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


--We can add DEFAULT VALUE by two way.

-- 1st WAY
CREATE TABLE products (
	id SERIAL PRIMARY KEY,
	name VARCHAR(40),
	department VARCHAR(40),
	price INTEGER DEFAULT 999,
	shop_name VARCHAR(50) DEFAULT 'walmart', -- THIS WAY WE CAN SET DEAFULT STRING NAME
	craetedAt TIME DEFAULT '00:001AM' -- THIS WAY WE CAN SET DEFAULT TIME
	weight INTEGER
)
-- 2nd WAY

ALTER TABLE products ALTER COLUMN price SET DEFAULT 899

ALTER TABLE products ALTER COLUMN shop_name SET DEFAULT walmart


-- NOW INSETING VALUE
INSERT INTO products(name,department,  weight) VALUES ('RC-CAR', 'kids', 1)
