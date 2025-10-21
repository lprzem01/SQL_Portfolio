-- start by inspecting the databse tables
SHOW databases;
USE ks;
SHOW tables;
SELECT * FROM projects16 ORDER BY ID limit 10;
-- count total rows 
-- should have 321616 values (some will be excluded due to miss matching)
SELECT COUNT(*) FROM projects16;
-- get summary of column names in each table
DESCRIBE projects16;
-- get all the kickstarter category types 
SELECT DISTINCT category FROM projects16;
-- get the number of kickstarter main category types
SELECT COUNT(DISTINCT main_category) FROM projects16;
-- get distinct state types
SELECT DISTINCT state FROM projects16;
-- check for null values 
SELECT *
FROM projects16
WHERE ID IS NULL
   OR name IS NULL
   OR category IS NULL
   OR main_category IS NULL
   OR currency IS NULL
   OR deadline IS NULL
   OR goal IS NULL
   OR launched IS NULL
   OR pledged IS NULL
   OR state IS NULL
   OR backers IS NULL
   OR country IS NULL
   OR usd_pledged IS NULL;

-- two records have an unknown name so I will replace null with "unknonwn name"
UPDATE projects16
SET name = 'unknown name'
WHERE name IS NULL;

-- get some simple statistics 

-- max pledged
SELECT MAX(pledged) FROM projects16;
-- max usd_pledged
SELECT MAX(usd_pledged) FROM projects16;
-- most common main category 
SELECT main_category, COUNT(*) AS frequency
FROM projects16
GROUP BY main_category
ORDER BY frequency DESC
LIMIT 1;
-- most common main category where state sucessfull
SELECT main_category, COUNT(*) AS frequency
FROM projects16 
WHERE state='successful'
GROUP BY main_category
ORDER BY frequency DESC
LIMIT 1;
-- project with the most backers
SELECT * FROM projects16 WHERE backers = (SELECT MAX(backers) FROM projects16);

-- count the number of rows with each main category and order by that number + save as view
CREATE VIEW main_categories AS
SELECT main_category, COUNT(*) AS frequency
FROM projects16 
WHERE state='successful'
GROUP BY main_category
ORDER BY frequency DESC;
-- sum of usd_pledged by year as a view
CREATE VIEW yearly_pledges AS
SELECT YEAR(deadline) AS y, SUM(usd_pledged) AS sum
FROM projects16 
GROUP BY y
ORDER BY sum DESC;
-- top countries of projects
CREATE VIEW countries AS
SELECT country, COUNT(*) AS frequency
FROM projects16 
GROUP BY country
ORDER BY frequency DESC;

