SELECT user_id FROM COMMENTS GROUP BY user_id

SELECT
  user_id,
  count(contents)
FROM
  COMMENTS
GROUP BY
  user_id