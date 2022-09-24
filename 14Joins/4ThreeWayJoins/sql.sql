CREATE TABLE authors (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50)
)

CREATE TABLE books (
    id SERIAL PRIMARY KEY,
    title VARCHAR(200),
    author_id INTEGER REFERENCES authors(id)
)

CREATE TABLE reviews (
    id SERIAL PRIMARY KEY,
    rating INTEGER,
    book_id INTEGER REFERENCES books(id),
    reviewer_id INTEGER REFERENCES authors(id)
)

INSERT INTO authors(name) VALUES ('Stephen King'), ('Agatha Christie'), ('JK Rowling')
INSERT INTO books(title, author_id) VALUES ('The Dark Tower',1 ), ('Affair At styles',2), ('Chamber of Secrets',3)
INSERT INTO reviews(rating, book_id, reviewer_id) VALUES (3,1,2), (4,2,1) , (5,3,3)

SELECT
  title,
  name,
  rating
FROM
  books
  JOIN authors ON books.author_id = authors.id
  JOIN reviews on reviews.reviewer_id = authors.id
  AND reviews.book_id = books.id

  DROP TABLE reviews