CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50)
)

CREATE TABLE photos (
  id SERIAL PRIMARY KEY,
  url VARCHAR(50),
  user_id INTEGER REFERENCES users(id)
)

INSERT INTO users (username) VALUES ('max04'), ('meet04'), ('KING04')
INSERT INTO photos (url, user_id) VALUES ('http://img1.jpg', 1),('http://img2.jpg', 1), ('http://img3.jpg', 2), ('http://img4.jpg', 3)

SELECT * FROM users
SELECT * FROM photos

INSERT INTO users (username) VALUES ('Denver04')
INSERT INTO  photos (url, user_id) VALUES  ('http://img5.jpg', null)



-- INNER JOIN
SELECT username, url FROM  photos   JOIN users on users.id = photos.user_id


-- LEFT JOIN
SELECT username, url FROM  photos  LEFT JOIN users on users.id = photos.user_id



-- RIGHT JOIN
SELECT username, url FROM  photos  RIGHT JOIN users on users.id = photos.user_id



-- FULL JOIN
SELECT username, url FROM  photos  FULL JOIN users on users.id = photos.user_id


-- DROP A TABLE OR DELETE A TABLE
DROP TABLE PHOTOS
