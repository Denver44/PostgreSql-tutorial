EXPLAIN SELECT username, contents FROM users JOIN comments ON comments.user_id = users.id WHERE username = 'Alyson14';


EXPLAIN ANALYZE SELECT username, contents FROM users JOIN comments ON comments.user_id = users.id WHERE username = 'Alyson14';