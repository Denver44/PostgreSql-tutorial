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


  SELECT
	user_id,
  COUNT(user_id)
FROM
  photos
GROUP BY
  (user_id)