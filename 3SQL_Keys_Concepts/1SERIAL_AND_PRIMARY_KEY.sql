------------------------------------------------- CREATE A TABLE WITH AUTO ID & PRIMARY KEY --------------------------------------------------------

-- KEYWORDS
-- INTEGER: If we put integer then we have to manually type the ID.
-- SERIAL: This data type will tell postgres that to generate the value for this column automaically.
-- PRIMAR KEY: will improve the perfomance when we look up the data by its ID. 


CREATE TABLE users(
  id SERIAL PRIMARY KEY , 
  username VARCHAR(50)

);

INSERT INTO  users(username) VALUES ('Denver45'),  ('BattelBoy4'), ('Gimma56');
SELECT  * FROM Users

-- id	username
-- 1	Denver45
-- 2	BattelBoy4
-- 3	Gimma56




