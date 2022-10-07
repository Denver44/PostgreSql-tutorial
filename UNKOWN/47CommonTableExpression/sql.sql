-- OUESTION : SHOW THE USERNAME OF USERS WHO WERE TAGGED IN A CAPTION OR PHOTO BEFOR JANUARY 7TH  2010. ALSO SHOW THE DATE THEY WERE TAGGED



 SELECT
 COUNT(*)
 FROM
   users
   JOIN caption_tags ON users.id = caption_tags.user_id
 WHERE
   caption_tags.created_at < '07 JAN 2010'



   SELECT
COUNT(*)
FROM
  users
  JOIN photo_tags ON users.id = photo_tags.user_id
WHERE
   photo_tags.created_at < '07 JAN 2010'

   
-- USING UNION

   SELECT
COUNT(*)
FROM
  users
  JOIN (
    SELECT
      user_id,
      created_at
    FROM
      caption_tags
    UNION ALL
    SELECT
      user_id,
      created_at
    FROM
      photo_tags
  ) AS tags ON tags.user_id = users.id
WHERE
  tags.created_at < '2010-01-07'


-- WE NEED O PINT THE USERNAME AND tags.created_at 

  SELECT
username , tags.created_at
FROM
  users
  JOIN (
    SELECT
      user_id,
      created_at
    FROM
      caption_tags
    UNION ALL
    SELECT
      user_id,
      created_at
    FROM
      photo_tags
  ) AS tags ON tags.user_id = users.id
WHERE
  tags.created_at < '2010-01-07'


-- CTE

WITH tags AS (
    SELECT user_id, created_at FROM caption_tags
    UNION ALL
    SELECT user_id, created_at FROM photo_tags
)

SELECT username , tags.created_at FROM users JOIN  tags ON tags.user_id = users.id WHERE  tags.created_at < '2010-01-07'

-- IT JUST MAKE THE SQL CODE READBILITY THAT"S ALL
-- IT DOESNT INCREASE THE PERFORMANCE NOTHING ONLY CODE READBILITY INCREASE 
