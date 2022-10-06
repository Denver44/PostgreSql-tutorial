


-- This how we Join two tables COMMENTS AND USER

SELECT  username,   contents FROM comments  JOIN users ON  comments.user_id = users.id 

-- COMMENTS AND PHOTOS

 SELECT  url,  contents FROM  comments  JOIN photos ON comments.user_id = photos.id


--NOTE:- After ON keyword we have to write the conditions