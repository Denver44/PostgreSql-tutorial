CREATE TABLE "users" (
  "id" SERIAL PRIMARY KEY,
  "created_at" timestamp,
  "updated_at" timestamp,
  "username" VARCHAR(30)
);

CREATE TABLE "likes" (
  "id" SERIAL PRIMARY KEY,
  "created_at" timestamp,
  "user_id" integer,
  "post_id" integer,
  "comment_id" integer
);

CREATE TABLE "posts" (
  "id" SERIAL PRIMARY KEY,
  "created_at" timestamp,
  "updated_at" timestamp,
  "url" VARCHAR(200),
  "user_id" integer,
  "contents" VARCHAR(200),
  "lat" real,
  "long" real
);

CREATE TABLE "comments" (
  "id" SERIAL PRIMARY KEY,
  "created_at" timestamp,
  "updated_at" timestamp,
  "content" VARCHAR(240),
  "user_id" integer,
  "post_id" integer
);

CREATE TABLE "photo_tags" (
  "id" SERIAL PRIMARY KEY,
  "created_at" timestamp,
  "updated_at" timestamp,
  "x" integer,
  "y" integer,
  "user_id" integer,
  "post_id" integer
);

CREATE TABLE "captions_tags" (
  "id" SERIAL PRIMARY KEY,
  "created_at" timestamp,
  "user_id" integer,
  "post_id" integer
);

ALTER TABLE "likes" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");

ALTER TABLE "likes" ADD FOREIGN KEY ("comment_id") REFERENCES "users" ("id");

ALTER TABLE "likes" ADD FOREIGN KEY ("post_id") REFERENCES "posts" ("id");

ALTER TABLE "posts" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");

ALTER TABLE "comments" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");

ALTER TABLE "comments" ADD FOREIGN KEY ("post_id") REFERENCES "posts" ("id");

ALTER TABLE "photo_tags" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");

ALTER TABLE "photo_tags" ADD FOREIGN KEY ("post_id") REFERENCES "posts" ("id");

ALTER TABLE "captions_tags" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");

ALTER TABLE "captions_tags" ADD FOREIGN KEY ("post_id") REFERENCES "posts" ("id");
