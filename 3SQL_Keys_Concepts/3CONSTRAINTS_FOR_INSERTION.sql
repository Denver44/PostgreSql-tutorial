CREATE TABLE photos(
  id SERIAL PRIMARY KEY , 
  url VARCHAR(200),
  user_id INTEGER REFERENCES users(id) 
);

-- THE BELOW INSETION QUERY WORKS FINE AS WE ARE INSERTING DATA FOR USER WHO ARE EXIST.

INSERT INTO
  photos(url, user_id)
VALUES
  ('http://img1.jpg', 3),
  ('http://img2.jpg', 1),
  ('http://img3.jpg', 2),
  ('http://img4.jpg', 3);


-- THE BELOW INSERTION QUERY WILL NOT WORK AS THERE IS NO USER EXIST WITH SUCH ID.

INSERT INTO
  photos(url, user_id)
VALUES
  ('http://img55.jpg', 3000);



-- THE BELOW INSERTION QUERY WILL WORK AS WE CAN INSERT PHOTO ID WITH ID as NULL.

INSERT INTO
  photos(url, user_id)
VALUES
  ('http://img55.jpg', null);

