
-- QUESTION-1 : SELECT THE USERS WITH THE HIGHEST IDS FROM THE USERS TABLES

SELECT
  id
FROM
  users
ORDER BY
  id DESC
LIMIT
  3


-- QUESTION-2 : JOIN THE USERS AND POSTS TABLE SHOW THE USERNAME OF USER ID  200 AND THE CAPTIONS OF ALL POSTS THEY HAVE CREATED

SELECT
  username, caption
FROM
  users
  JOIN posts ON posts.user_id = users.id
WHERE
  posts.user_id = 200

-- OR --

SELECT
  username,
  caption
FROM
  users
  JOIN posts ON posts.user_id = users.id
WHERE
  users.id = 200



-- QUESTION-3 : SHOW EACH USERNAME AND THE NUMBER OF LIKES THAT THEY HAVE CREATED. 


SELECT
	username,
  Count(*)
FROM
  users
  JOIN likes on users.id = likes.user_id
GROUP BY
  (username)