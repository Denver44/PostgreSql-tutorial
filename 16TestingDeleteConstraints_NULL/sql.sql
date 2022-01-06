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
  user_id INTEGER REFERENCES users(id) ON DELETE SET NULL
);
INSERT INTO
  photos (url, user_id)
VALUES
  ('http://img1.jpg', 3),
  ('http://img2.jpg', 1),
  ('http://img3.jpg', 4),
  ('http://img4.jpg', 3);

SELECT * FROM users JOIN photos on users.id = photos.user_id


DELETE FROM users WHERE id = 3

SELECT * FROM photos

id	url	user_id
2	http://img2.jpg	1
3	http://img3.jpg	4
1	http://img1.jpg	null
4	http://img4.jpg	null

-- EFFECT OF SET NULL is that after deleting that user the user_id get null for that user as that user is deleted for the user table.