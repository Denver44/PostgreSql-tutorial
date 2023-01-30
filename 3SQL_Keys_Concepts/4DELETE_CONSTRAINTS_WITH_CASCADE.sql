------------------------------------------------- DELETE CONSTRAINTS WITH (ON DELETE CASCADE)  --------------------------------------------------------

-- KEYWORD :  ON DELETE CASCADE
-- HERE CASCADE WILL MAKE SURE THAT WHEN THE USER IS DELETED THE PHOTOS WHICH ARE REALTED TO THAT USER IS ALSO GOT DELETED.


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
  user_id INTEGER REFERENCES users(id) ON DELETE CASCADE
);


INSERT INTO
  photos (url, user_id)
VALUES
  ('http://img1.jpg', 3),
  ('http://img2.jpg', 1),
  ('http://img3.jpg', 2),
  ('http://img4.jpg', 3);


SELECT users.id, username, url FROM  users JOIN photos ON users.id = photos.user_id

DELETE FROM users WHERE id = 2

SELECT * FROM photos