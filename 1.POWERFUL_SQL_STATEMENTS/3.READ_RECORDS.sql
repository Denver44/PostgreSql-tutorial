

------------------------------------------------- READ DATA FROM DB --------------------------------------------------------


-- KEYWORDS : 1. SELECT  2. FROM
-- SELECT : In SELECT we write the column name for table from which we extarct data.
-- FROM : In FROM we write the table name from which we want to extract our data.
-- (*) means that we want all the data from all the columns

SELECT * FROM cities


-- To just print the data of cloumn name, area we have to write name and area column of data
SELECT name, area FROM cities

-- We can Print a cloumn multiple times
SELECT country, name, area, population, country FROM cities

