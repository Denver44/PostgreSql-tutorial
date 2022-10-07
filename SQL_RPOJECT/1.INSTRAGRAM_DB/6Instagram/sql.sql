CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  username VARCHAR(30) NOT NULL,
  bio VARCHAR(400),
  avatar VARCHAR(200),
  phone VARCHAR(13),
  email VARCHAR(40),
  password VARCHAR(40),
  status VARCHAR(15),
  CHECK(COALESCE(phone, email) IS NOT NULL)
);

-- CURRENT_TIMESTAMP: This means WHATEVER THE CURRENT TIME WILL BE AT THAT TIME THAT TIME WILL GOT SAVE.
-- CHECK(COALESCE(1, NULL) IS NOT NULL) CHECK PASS   CHECK(COALESCE(NULL, NULL) IS NOT NULL) CHECK FAIL 


CREATE TABLE posts (
  id SERIAL PRIMARY KEY,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  url VARCHAR(200) NOT NULL,
  caption VARCHAR(240),
  lat REAL CHECK(lat is NULL OR (lat >= -90 AND lat <= 90)),
  lng REAL CHECK(lng is NULL OR (lng >= -180 AND lng <= 180)),
  user_id INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE
);

--  REAL: WE USE REAL TYPE WHEN WE DON'T NEED PRECISE ANSWER AFTER point 6 digit
--  CHECK(lat is NULL OR (lat >= -90 AND lat <= 90)) : THIS MEANS EITHER THE VALUE IS NULL OR IF NOT NULL THEN IT SHOULD FALL BETWEEN THE RANG WHICH IS MENTIONED
--  GK : LAT VALUE WILL BE ALWAYS -90 TO 90 AND LNG VALUE WILL BE -180 TO 180.


CREATE TABLE comments (
  id SERIAL PRIMARY KEY,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  contents VARCHAR(240) NOT NULL,
  user_id INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  post_id INTEGER NOT NULL REFERENCES posts(id) ON DELETE CASCADE
);


CREATE TABLE likes (
  id SERIAL PRIMARY KEY,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  user_id INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  post_id INTEGER REFERENCES posts(id) ON DELETE CASCADE,
  comment_id INTEGER REFERENCES comments(id) ON DELETE CASCADE,
  CHECK(
      COALESCE((post_id)::BOOLEAN ::INTEGER, 0) 
      +
      COALESCE((comment_id)::BOOLEAN ::INTEGER, 0) 
      = 1
    ),
    UNIQUE(user_id, post_id, comment_id)
);

--  NOTE:
-- 1. Here we don't added NULL property on post_id and comment_id is that we are saving both post and commnest like differntly so that we can get how many likes we get on post and how many for comments.
-- 2. UNIQUE(user_id, post_id, comment_id) : This will make sure that there is always uniqueness abd comments and post are not like at same time
-- 3. Because here we are talking about the likes we got for a commnents for particular posts. 
-- 4. This is how coalesce proprty works. COALESCE((NULL)::BOOLEAN ::INTEGER, 0) => COALESCE( NULL : :INTEGER, 0) => COALESCE(NULL, 0)


CREATE TABLE photo_tags (
  id SERIAL PRIMARY KEY,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  user_id INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  post_id INTEGER NOT NULL REFERENCES posts(id) ON DELETE CASCADE,
  x INTEGER NOT NULL,
  y INTEGER NOT NULL,
  UNIQUE(user_id, post_id)
);

-- HERE WE HAVE SET THAT A USER MUST BE TAGS ONCE BY SETTING THIS  UNIQUE(user_id, post_id)
-- X AND Y co-ordinates is needed When we tag someone



CREATE TABLE caption_tags (
  id SERIAL PRIMARY KEY,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  user_id INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  post_id INTEGER NOT NULL REFERENCES posts(id) ON DELETE CASCADE,
  UNIQUE(user_id, post_id)
);

--   UNIQUE(user_id, post_id) Here wa have set that unique so that a user cannot be mentioned more than once in captions so that user will not multiple notifications that we you have been tagged to a post.


CREATE TABLE hashtags (
  id SERIAL PRIMARY KEY,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  title VARCHAR(20) NOT NULL UNIQUE
);

-- HERE ALL Hashtags will be stored.


CREATE TABLE hashtags_posts (
  id SERIAL PRIMARY KEY,
  post_id INTEGER NOT NULL REFERENCES posts(id) ON DELETE CASCADE,
  hashtag_id INTEGER NOT NULL REFERENCES hashtags(id) ON DELETE CASCADE,
  UNIQUE(hashtag_id, post_id)
);

-- ONE Hastag for One post, A post can have multiple hastags but all should be UNIQUE


CREATE TABLE followers (
  id SERIAL PRIMARY KEY,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  leader_id INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  follower_id INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  UNIQUE(leader_id, follower_id)
);

--    UNIQUE(leader_id, follower_id) IT WILL MAKE SURE THAT A USER CAN FOLLOW ONCE ABOTHER USERS.
