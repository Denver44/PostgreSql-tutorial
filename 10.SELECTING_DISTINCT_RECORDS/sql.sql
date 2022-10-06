-- Distinct 

-- We use distinct with SELECT and it should be just next to select
-- Distinct will give us the list of all different unique values insides of a cloumn


SELECT DISTINCT department FROM products;

SELECT COUNT(DISTINCT department) FROM products;

-- Here we printed a nmae and department whhich is unique for that products
SELECT DISTINCT department,name FROM products; 


SELECT COUNT(DISTINCT manufacturer) FROM phones;

-- This will throw error and we cannot do this.
SELECT COUNT(DISTINCT manufacturer, price) FROM phones; 

