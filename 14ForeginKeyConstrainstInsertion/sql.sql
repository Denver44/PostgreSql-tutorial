CREATE TABLE photos(
  id SERIAL PRIMARY KEY , 
  url VARCHAR(200),
  user_id INTEGER REFERENCES users(id) 
);

-- THis will be OKay as we insert a photo  thta ois tied to a user that exists

INSERT INTO
  photos(url, user_id)
VALUES
  ('http://img1.jpg', 3),
  ('http://img2.jpg', 1),
  ('http://img3.jpg', 2),
  ('http://img4.jpg', 3);


-- We insert a photo that refers to a user that doesn't

INSERT INTO
  photos(url, user_id)
VALUES
  ('http://img55.jpg', 3000);



-- We insert a photo that isn't tied to any user

INSERT INTO
  photos(url, user_id)
VALUES
  ('http://img55.jpg', null);


-- This okay it will not throw error by the user_id wll be NULL and it will be not associated with any user and NULL is very Special Keyword in SQL 