CREATE TABLE authors(
    id SERIAL PRIMARY KEY,
    name VARCHAR(50)
)

INSERT INTO 
authors(name)
VALUES
('JK Rowling'), 
('Stephen King') , 
('Agatha Christie') , 
('Dr Seuss')


CREATE TABLE books(
  id SERIAL PRIMARY KEY,
  title VARCHAR(200),
  author_id INTEGER REFERENCES authors(id)
)

INSERT INTO
  books(title, author_id)
VALUES
  ('Chamber of Secret', 1),
  ('Prisoner of Azkaban', 1),
  ('The Dark Tower', 2),
  ('Murder At the Links', 3),
  ('Affair at Styles', 3),
  ('Cat in the Hat', 4)

SELECT
  authors.name,
  books.title
FROM
  authors
  JOIN books ON authors.id = books.author_id


-- GROUP BY 

SELECT
  authors.name,
  COUNT(*)
FROM
  authors
  JOIN books ON authors.id = books.author_id
GROUP BY
  authors.name



SELECT
  photo_id,
  COUNT(*)
FROM
  COMMENTS
WHERE
  photo_id < 3
GROUP BY
  photo_id
HAVING
  COUNT(*) > 2


  ----- HAVING WHERE AND GROOUP BY---

-- OUESTION : GIVEN A TABLE OF PHONES, PRINT THE NAMES OF MANUFACTURERS AND TOTAL REVENUE (PROCE * UNITS_SOLD ) FOR ALL PHONES. ONLY PRINT THE MANUFACTURERS WHO HAVE REVENUE GREATER THAN 2000000 FOR ALL THE PHONES THEY SOLD



CREATE TABLE phones(
  id SERIAL,
  name VARCHAR(50),
  manufacturer VARCHAR(50),
  price INTEGER,
  units_sold INTEGER
)

INSERT INTO phones(name, manufacturer, price, units_sold) VALUES
('N1280', 'Nokia', 199, 1925)
('Iphone 4', 'Apple', 399, 9436)
('Galaxy S', 'Samsung', 299, 2359)
('S5620 Monte', 'Samsung', 250, 2385)
('N8', 'Nokia', 150, 7543)
('Droid', 'Motorola', 150, 8395)
('Wave S8500', 'Samsung', 175, 9259)


SELECT
  manufacturer,
  SUM(price * units_sold)
FROM
  phones
GROUP BY
  manufacturer
HAVING
  SUM(price * units_sold) > 2000000

