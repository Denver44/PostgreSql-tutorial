

------------------------------------------------- INSETING SINGLE VALUE AT A TIME --------------------------------------------------------

-- KEYWORDS :  1. INSERT   2. VALUES

-- INSERT helps us to Insert data in oue DB.
-- Values is where  in brackets () we defined the values which we want to insert for each columns in our table.
-- The order should be must, we cannot jumble the order, our column should map up to our Values.
-- We just have to put comma and type all the values which we want to enter in our db in open and close brackets and at the end just put semiColon.

INSERT INTO
  cities (name, country, population, area)
VALUES
  ('Tokyo', 'JAPAN', 385050000, 8233);
 


------------------------------------------------- INSETING MULTIPLE VALUE AT A TIME --------------------------------------------------------

INSERT INTO
  cities (name, country, population, area)
VALUES
  ('Tokyo', 'JAPAN', 385050000, 8233),
  ('Delhi', 'India', 28125000, 2240),
  ('Shanghai', 'China', 22125000, 4015),
  ('Sao Paulo', 'Brzail', 20935000, 3043);



