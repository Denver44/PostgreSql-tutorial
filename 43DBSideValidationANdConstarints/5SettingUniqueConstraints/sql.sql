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
	name VARCHAR(40) UNIQUE,
	department VARCHAR(40),
	price INTEGER DEFAULT 999,
	shop_name VARCHAR(50) DEFAULT 'walmart',
	craetedAt TIME DEFAULT '00:001AM'
	weight INTEGER
)
-- 2nd WAY

ALTER TABLE products ADD UNIQUE (name)
ALTER TABLE products ADD UNIQUE (department)

-- HERE Indivdula will check if name is not found unqiue u will get error and same for deparmtnt


ALTER TABLE products ADD UNIQUE (department,name) 

-- HERE when we write department and name then anyone out of them should be unique


INSERT INTO products(name,department,price,weight) VALUES ('Shirt', 'Clothes', 20,1)
INSERT INTO products(name,department,price,weight) VALUES ('Shirt', 'Clothes', 20,1) -- Second Time when we Insert this we will get error.
INSERT INTO products(name,department,price,weight) VALUES ('Shirt-1', 'Clothes', 20,1) -- But this will okay



-- TO DROP A CONSTRAINTS

ALTER TABLE products DROP CONSTRAINTS products_name_key 
ALTER TABLE products DROP CONSTRAINTS products_department_key 

ALTER TABLE products DROP CONSTRAINTS products_name_department_key 
