CREATE TABLE cities (
  name VARCHAR(50),
  country VARCHAR(50),
  population INTEGER,
  area INTEGER
);

INSERT INTO
  cities (name, country, population, area)
VALUES
  ('Tokyo', 'JAPAN', 385050000, 8233),
  ('Delhi', 'India', 28125000, 2240),
  ('Shanghai', 'China', 22125000, 4015),
  ('Sao Paulo', 'Brzail', 20935000, 3043);



------------------------------------------------- Delete Record with Where Clause in SQL --------------------------------------------------------

-- KEWYORDS : 1. DELETE
-- DELETE : THIS KEYWORD HELPS TO DELETE A ROW


DELETE FROM cities WHERE name = 'Tokyo'  -- IT WILL DELETE THE ROW WHERE THE NAME IS TOKYO




