
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  username VARCHAR(50)
);


INSERT INTO users
  (username)
VALUES
  ('DENVER'),
  ('VIPER'),
  ('DEADSHOT');


------------------------------------------------- DROP a table in SQL --------------------------------------------------------

-- KEYWORDS: 1. DROP
-- DROP Keyword is used to delete table or we can say drop a whole table.

DROP TABLE users



