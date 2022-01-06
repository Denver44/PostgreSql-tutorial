CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  username VARCHAR(50)
);


INSERT INTO users
  (username)
VALUES
  ('DENVER'),
  ('VIPER'),
  ('DEADSHOT');



CREATE TABLE photos (
    id SERIAL PRIMARY KEY,
    url VARCHAR(200),
    user_id INTEGER REFERENCES users(id)
  );


INSERT INTO
  photos(url, user_id)
VALUES
  ('http://img1.jpg', 3),
  ('http://img2.jpg', 1),
  ('http://img3.jpg', 2),
  ('http://img4.jpg', 3);

DROP TABLE photos

-- DROP Keyword is used to delete table