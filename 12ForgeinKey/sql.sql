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


SELECT * FROM  photos

id	url	        user_id
1	http://img1.jpg	3
2	http://img2.jpg	1
3	http://img3.jpg	2
4	http://img4.jpg	3



-- MYSQL SYNATX FOR FOREIGN KEY
-- CREATE TABLE photoes (
--     id int NOT NULL PRIMARY KEY,
--     url VARCHAR(200),
--     user_id int FOREIGN KEY REFERENCES users(id)
-- );

-- IN POSTGRES NO NEED TO TYPE FOREGIN KEY WORD BUT IN MYSQL WE HAVE TO MENTION IT.