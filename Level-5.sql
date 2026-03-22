USE sakila;

SHOW TABLES;

-- DESCRIBE
DESCRIBE film;

-- film
-- film_actor
-- actor

-- Liste todos os filmes com seus atores.

DESCRIBE film; 
DESCRIBE film_actor;
DESCRIBE actor;
 
 SELECT f.title, f.description, f.release_year, a.first_name, a.last_name
 FROM film f
 JOIN film_actor fa
 ON fa.film_id = f.film_id 
 JOIN actor a
 ON fa.actor_id = a.actor_id;
 
 -- Quantos filmes cada ator participou?
SELECT * FROM actor;
SELECT * FROM film_actor;

SELECT 
	a.first_name,
    a.last_name, 
    COUNT(*) AS number_of_movies
FROM actor a
JOIN film_actor fa
ON fa.actor_id = a.actor_id
GROUP BY a.actor_id, a.first_name, a.last_name;

-- GROUP BY fa.actor_id;
 
 -- Qual ator participou de mais filmes?
 
 SELECT 
	a.first_name,
    a.last_name, 
    COUNT(*) AS number_of_movies
FROM actor a
JOIN film_actor fa
ON fa.actor_id = a.actor_id
GROUP BY a.actor_id, a.first_name, a.last_name
ORDER BY number_of_movies DESC
LIMIT 1;
 
 
-- Liste todos os aluguéis com o título do filme.
 
 -- 
 -- 
 
 
 