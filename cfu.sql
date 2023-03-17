CREATE DATABASE IF NOT EXISTS cfu;

-- 1
CREATE TABLE IF NOT EXISTS countries(
country_id VARCHAR (2) PRIMARY KEY,
country_name VARCHAR (40) NOT NULL,
region_id  INT


);
DESCRIBE countries;

-- 2
ALTER TABLE countries
ADD country_code  VARCHAR (3) NOT NULL ;

-- 3


ALTER TABLE countries
DROP COLUMN country_code ;

-- 4

INSERT INTO countries(COUNTRY_ID,
COUNTRY_NAME,
REGION_ID) 
VALUES ("35","INDIA",12002)
;
SELECT *
FROM countries;

-- 5

INSERT INTO countries(COUNTRY_ID,
COUNTRY_NAME
) 
VALUES ("91","indiq");
SELECT *
FROM countries;

-- 6

INSERT INTO countries(COUNTRY_ID,
COUNTRY_NAME,
REGION_ID) 
VALUES ("5","INonesia",102),
("00","China",12002),("30","Ireland","NUll")
;
SELECT *
FROM countries;


UPDATE countries
SET region_id = 122
WHERE COUNTRY_ID="30" ;

 