SELECT
  user_id,
  COUNT(user_id) AS num_comments_created_by_the_user,
  MAX(id)
FROM
  COMMENTS
GROUP BY
  user_id


  INSERT INTO
  comments(contents, user_id, photo_id)
VALUES
  ('LATEST COMMENT', NULL, NULL)



  SELECT
  user_id,
  COUNT(*) AS num_comments_created_by_the_user,
  MAX(id)
FROM
  COMMENTS
GROUP BY
  user_id


  -- COUNT(*) means it will count every object in the comments which has id

-- FIND THE NUMBER OF PHOTO POST BY EACH USER.


  SELECT
	user_id,
  COUNT(user_id)
FROM
  photos
GROUP BY
  (user_id)


-- FIND THE NUMBER OF COMMNETS FOR EACH PHOTO 

SELECT
  count(contents),
  comments.photo_id
FROM
  comments
  JOIN photos on comments.photo_id = photos.id
GROUP BY
  photo_id

-- OR


SELECT
  photo_id,
  count(*)
FROM
  comments
GROUP BY
  photo_id


-- FIND THE NUMBER OF COMMENTS FOR EACH PHOTO WHERE THE PHOTO_ID IS LESS THAN 3 AND THE PHOTO HAS MORE THAN 2 COMMNETS.

-- 1. Solution

  SELECT
  photo_id,
  count(*)
FROM
  comments

GROUP BY
  photo_id
having photo_id < 3 AND count(contents) > 2


-- 2. Solution
  SELECT
  photo_id,
  count(*) as comment_count
FROM
  comments
WHERE  photo_id < 3 
GROUP BY photo_id
having count(*) > 2

-- FIND THE USER(user_id) WHERE THE USER HAS COMMENTED ON FIRST 50 PHOTOS AND THE USER ADDED MORE THAN 20 COMMENTS ON THOSE PHOTOS.

SELECT
  user_id,
  count(*)
FROM
  comments
WHERE
  photo_id < 50
GROUP BY
  user_id
having
  count(*) > 20