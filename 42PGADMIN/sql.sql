-- OPEN PGADMIN > CLICK ON POSTGRESQL > DATABASES > POSTGRES > RIGHT CLICK > CLICK QUERY TOOL

-- NOW IN THE QUERY TOOL WE CAN EXECUTE OUR QUERY.

-- NUMERIC TYPE


SELECT 2*2

SELECT (2) -- POSTGRESS WILL TREAT THIS AS A INTEGER
SELECT (2.0) -- POSTGRESS WILL TREAT THIS AS A NUMERIC
SELECT 2.0::INT-- POSTGRESS WILL TYPECAST TO INTEGER
SELECT 2::NUMERIC -- PG WILL TYPECAST IT TO NUMERIC
SELECT 2::SMALLINT -- PG WILL TYPECAST IT TO NUMERIC



-- CHARACTER TYPE

-- HERE WE HAVE DEFINED THAT THE SZIE OF CHARACTER WILL BE 5.
-- SO THE CHRACTERS MORE THAN 5 WILL BE REMOVED AND ABCDE WILL BE STORED

SELECT ('ABCEDF'::CHAR(5)) 


-- HERE THE CHAR IS  5 AND WE HAVE DEFINE ONLY THREE CHAR SO ABC plus TWO WHITE SPACES WILL BE SAVED. 
SELECT ('ABC'::CHAR(5)) 


-- IF WE PUT VARCHAR Then WE CAN ENTER AS MANAY LENGHT AS WE WANT 

-- IF WE PUT VARCHAR(5) Then WE CAN ENTER 5 CHARCTER LENGTH
SELECT ('ABCEDF'::VARCHAR(5)) 


-- IN TEXT WE CAN ENTER AS MANY LENGTH OF CHAR WE WANT>
SELECT ('ABCEDF'::TEXT)


-- BOOLEAN DATATYPE




-- THIS ALL WILL BE TREATED AS TRUE BY PG
SELECT ('ON'::BOOLEAN) --TRUE
SELECT ('true'::BOOLEAN)
SELECT ('t'::BOOLEAN)
SELECT ('y'::BOOLEAN)
SELECT ('yes'::BOOLEAN)
SELECT (1::BOOLEAN) --TRUE


-- THIS ALL WILL BE TREATED AS FALSE BY PG
SELECT ('OFF'::BOOLEAN) -- FALSE
SELECT ('false'::BOOLEAN)
SELECT ('f'::BOOLEAN)
SELECT ('n'::BOOLEAN)
SELECT ('no'::BOOLEAN)
SELECT (0::BOOLEAN) -- FALSE


-- DATE

SELECT ('NOV-20-1990'::DATE) -- 1990-11-20
SELECT ('NOV 20 1990'::DATE) -- 1990-11-20
SELECT ('NOV, 20, 1990'::DATE)
SELECT ('NOV, 20 1990'::DATE)
SELECT ('NOVEMBER 20 1990'::DATE)
SELECT ('20 NOVEMBER 1990'::DATE)

-- TIME
-- TIME MEANS IN PG IS TIME WITHOUT TIME ZONE

SELECT ('01:23 AM'::TIME) -- 01:23:00
SELECT ('01:23 '::TIME) -- 01:23:00
SELECT ('20:34 '::TIME) -- 20:34:00
SELECT ('01:34 PM'::TIME) -- 13:34:00
SELECT ('01:34 PM'::TIME WITHOUT TIME ZONE) -- 13:34:00


-- TIME WITH TIME ZONE

SELECT ('01:34 PM EST'::TIME WITH TIME ZONE) --13:34:00-05:00

SELECT ('01:34 PM UTC+5:30'::TIME WITH TIME ZONE) --13:34:00-05:30


SELECT ('JAN 09 2021 01:34 PM UTC+5:30'::TIMESTAMP WITH TIME ZONE) -- 2021-01-10 00:34:00+05:30


-- TIME AND DATE IS VERY FLEXIBLE IN PG




-- INTERVAL

SELECT ('1D'::INTERVAL) -- 1day
SELECT ('2D 3M '::INTERVAL) -- 2 days 00:03:00 // 2 Days and 3 Minutes

SELECT ('1H 3M '::INTERVAL) -- "01:03:00"

SELECT ('1D 20H 30M 45S '::INTERVAL) -- 1 day 20:30:45


SELECT ('1D 20H 30M 45S '::INTERVAL) - ('1D'::INTERVAL) --- 20:30:45



SELECT
	('JAN 09 2021 1:23 PM UTC'::TIMESTAMP WITH TIME ZONE)
	- 
	('1D'::INTERVAL) -- 2021-01-08 18:53:00+05:30