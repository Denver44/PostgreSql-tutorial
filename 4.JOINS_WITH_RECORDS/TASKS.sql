SELECT
  *
FROM
  comments
  join users on users.id = comments.user_id



SELECT
  contents, URL
FROM
  comments
  join photos on photos.id = comments.photo_id


SELECT
  username,
  URL
FROM
  users
  join photos on photos.user_id = users.id

INSERT INTO
  photos (url, user_id)
VALUES
  ('http://banner.info', NULL);

  SELECT
  username,
  URL
FROM
  users
  right join photos on photos.user_id = users.id

  SELECT * from photos

  SELECT
  count(photos.url)
FROM
  users
  right join photos on photos.user_id = users.id

SELECT
  contents,
  url
FROM
  comments
  JOIN photos on comments.photo_id = photos.id
WHERE
  comments.user_id = photos.user_id

  SELECT
  contents,
  url
FROM
  comments
  JOIN photos on comments.photo_id = photos.id
  JOIN users on users.id = comments.photo_id AND users.id = photos.id;
