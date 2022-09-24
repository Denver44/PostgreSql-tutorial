CREATE INDEX ON users (username)
DROP INDEX users_username_idx

-- TO create Index we have write Tbalename after ON.
-- In parenthesis we have write the column name 
-- And our Index will be created 

CREATE INDEX username_idx ON users (username)
DROP INDEX username_idx

-- To give a name to index we have to write like this.




-- To GET THE BRNCHAMRK OF INDEX

-- WITH INDEX
-- Execution Time: 0.159 ms
EXPLAIN ANALYZE SELECT * FROM users WHERE username = 'Emil30';
 
 
-- WITHOUT INDEX
--  Execution Time: 1.321 ms
EXPLAIN ANALYZE SELECT * FROM users WHERE username = 'Emil30';



-- TO GE THE SIZE OF INDEXES


-- SIZE IS 184KB
SELECT pg_size_pretty (pg_relation_size('users_username_idx'))


-- SIZE IS 872KB
SELECT pg_size_pretty (pg_relation_size('users'))


-- TO know the Indexes in our PG admin database run this below Query
SELECT relname, relkind FROM pg_class WHERE relkind = 'i';



