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


-- ON DELETE CASCADE
-- CASCADE MEANS IF WE DELETE THE USER THEN THE PHOTOS OF USER WILL ALSO BE DELETED BUT NOT VICE VERSA AS PHOTOS DEPEND ON USER NOR USER DEPENDS ON PHOTOS

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


SELECT
  users.id,
  username,
  url
FROM
  users
  JOIN photos ON users.id = photos.user_id

  DELETE FROM users WHERE id = 2