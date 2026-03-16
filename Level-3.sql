USE sakila;

SHOW TABLES;

-- DESCRIBE
DESCRIBE film;

-- 1.  HOW MANY MOVIES EXISTS BY rating

SELECT rating, COUNT(*) AS total_ratings
FROM film
GROUP BY rating;