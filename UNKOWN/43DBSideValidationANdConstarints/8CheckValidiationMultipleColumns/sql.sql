CREATE TABLE products (
	id SERIAL PRIMARY KEY,
	name VARCHAR(40),
	department VARCHAR(40),
	price INTEGER CHECK (price > 0),
	weight INTEGER
)



ALTER TABLE price ADD CHECK (price > 0)



INSERT INTO products(name,department,price,weight) VALUES ('Shirt', 'Clothes', -20,1 ) -- Now we will get error

INSERT INTO products(name,department,price, weight) VALUES ('Pants', 'Clothes',20, 1) -- Validation Pass No error


-- THE EQUALITY CHECKS WE CAN PERFORM ARE
-- > 
-- < 
-- <= 
-- >= 
-- = 
-- some Others