
SELECT url,contents,  FROM  comments  JOIN photos on photos.id = comments.photo_id WHERE comments.user_id = photos.user_id


