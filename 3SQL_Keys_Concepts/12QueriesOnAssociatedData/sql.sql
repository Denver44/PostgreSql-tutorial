CREATE TABLE photos(
  id SERIAL PRIMARY KEY , 
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


SELECT * FROM  photos WHERE user_id = 3

SELECT url, username FROM photos JOIN users ON users.id = photos.user_id

url	            username
http://img2.jpg	Denver45
http://img3.jpg	BattelBoy4
http://img4.jpg	Gimma56
http://img1.jpg	Gimma56




SELECT * FROM photos JOIN users ON users.id = photos.user_id

id	url	                  user_id	    id      	username
1	http://img2.jpg	        1	          1	      Denver45
2	http://img3.jpg	        2	          2	      BattelBoy4
3	http://img4.jpg	        3	          3	      Gimma56
3	http://img1.jpg	        3	          3	      Gimma56


