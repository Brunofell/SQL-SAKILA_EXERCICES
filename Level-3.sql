USE sakila;

SHOW TABLES;

-- DESCRIBE
DESCRIBE film;

-- 1.  HOW MANY MOVIES EXISTS BY rating

SELECT rating, COUNT(*) AS total_ratings
FROM film
GROUP BY rating;

-- 2. HOW MANY CLIENTS EXISTS BY STORE

SELECT store_id, COUNT(*) AS customer_per_store  
FROM customer
GROUP BY store_id;

-- 3. WHAT IS THE TOTAL VALUE PAID IN THE PLATFORM
SELECT SUM(amount) AS total_amount
FROM payment;

-- 4. WHAT IS THE AVARAGE AMOUNT

SELECT AVG(amount) AS avg_amount
FROM payment;

-- 5. HOW MANY PAYMENTS WERE MADE BY CLIENTS

SELECT customer_id, COUNT(amount) AS amount_per_client
FROM payment
GROUP BY customer_id;

-- 6. LIST THE 5 clients WITH THE HIGHEST AMOUNT

SELECT customer_id, COUNT(amount) AS amount_per_client
FROM payment
GROUP BY customer_id 
ORDER BY amount_per_client DESC
LIMIT 5;


