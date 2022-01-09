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


-- 1st WAY
CREATE TABLE products (
	id SERIAL PRIMARY KEY,
	name VARCHAR(40) ,
	department VARCHAR(40),
	price INTEGER DEFAULT 999,
	weight INTEGER
	UNIQUE (name, department)
)
-- 2nd WAY

ALTER TABLE products ADD UNIQUE (name)
ALTER TABLE products ADD UNIQUE (department)

-- HERE Indivdula will check if name is not found unqiue u will get error and same for deparmtnt


ALTER TABLE products ADD UNIQUE (department,name) 

-- HERE when we write department and name then anyone out of them should be uniqu

-- TO DROP A CONSTRAINTS

ALTER TABLE products DROP CONSTRAINTS products_name_key 
ALTER TABLE products DROP CONSTRAINTS products_department_key 

ALTER TABLE products DROP CONSTRAINTS products_name_department_key 
