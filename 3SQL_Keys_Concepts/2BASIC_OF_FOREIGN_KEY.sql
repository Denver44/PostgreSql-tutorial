

------------------------------------------------- BASICS OF FOREGIN KEY  --------------------------------------------------------
-- KEYWORDS
-- 1. REFERNCES : HERE USING REFERNCE KEYWORD IN TABLE WE CAN CREATE A RELATIONSHIP BETWEEN TWO TABLE.


CREATE TABLE users(
  id SERIAL PRIMARY KEY , 
  username VARCHAR(50)

);

CREATE TABLE photos(
  id SERIAL PRIMARY KEY , 
  url VARCHAR(200),
  user_id INTEGER REFERENCES users(id) 
);

INSERT INTO  users(username) VALUES ('Denver45'),  ('BattelBoy4'), ('Gimma56');

INSERT INTO
  photos(url, user_id)
VALUES
  ('http://img1.jpg', 3),
  ('http://img2.jpg', 1),
  ('http://img3.jpg', 2),
  ('http://img4.jpg', 3);


SELECT * FROM  photos



-- HERE WE HAVE JOIN THE TWO TABLE ON THE BASIS OF user.id.

SELECT user_id, username, url FROM photos  JOIN users on photos.user_id = users.id