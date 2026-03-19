USE sakila;

SHOW TABLES;

-- DESCRIBE
DESCRIBE film;


-- Liste todos os aluguéis com o nome do cliente. rental customer

SELECT r.rental_id, c.first_name,  c.last_name, r.rental_date
FROM customer c
JOIN rental r
ON r.customer_id = c.customer_id;

-- Liste todos os pagamentos com o nome do cliente.

SELECT c.first_name, c.last_name, p.rental_id, p.amount, p.payment_date
FROM customer c
JOIN payment p
ON p.customer_id = c.customer_id;


-- Liste todos os filmes com seu idioma.

SELECT f.title, l.name
FROM film f
JOIN language l
ON f.language_id = l.language_id;


-- Liste todos os funcionários e suas lojas.

SELECT * FROM staff;
SELECT * FROM store;

SELECT store.store_id,  staff.staff_id, staff.first_name, staff.last_name, staff.email
FROM staff staff
JOIN store store
ON store.store_id = staff.store_id

