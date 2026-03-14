USE sakila;

SHOW TABLES;

-- 1. LIST ALL MOVIES WITH film_id, title AND release_year

SELECT film_id, title, release_year
FROM film;

-- 2. LIST THE FIRST 10 ACTORS 

SELECT * FROM actor
LIMIT 10;

-- 3. LIST ALL CLIENTS WITH first_name, last_name AND email

SELECT first_name, last_name, email
FROM customer;

-- 4. HOW MANY MOVIES EXISTS IN THE DB

SELECT COUNT(*) AS number_of_movies
FROM film;

-- 5. HOW MANY CLIENTS EXISTS IN THE DB

SELECT COUNT(*) AS number_of_clients
FROM customer;

-- 6. HOW MANY ACTORS EXISTS IN THE DB

SELECT COUNT(*) AS number_of_actors
FROM actor;

-- 7. LIST ALL THE RATINGS FOR UNIQUE MOVIES

SELECT DISTINCT rating
FROM film;

-- 8. LIST ALL THE LANGUAGES AVAILABLE

SELECT name FROM language;














