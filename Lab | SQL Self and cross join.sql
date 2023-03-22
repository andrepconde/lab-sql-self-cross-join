# Lab | SQL Self and cross join
USE sakila;

# 1. Get all pairs of actors that worked together.
SELECT A1.actor_id, A2.actor_id, film.title
FROM sakila.film_actor as A1 , sakila.film_actor as A2
JOIN film
ON film.film_id = A2.film_id
WHERE A1.actor_id <> A2.actor_id;

# 2. Get all pairs of customers that have rented the same film more than 3 times.
SELECT A.rental_id, A.customer_id, B.customer_id
FROM sakila.rental as A, sakila.rental as B
WHERE A.customer_id <> B.customer_id AND COUNT(rental.rental_id) > 3; # i know that this is wrong, i was showed the code, but didnt get it

# 3. Get all possible pairs of actors and films. 
SELECT A1.actor_id, film.title
FROM sakila.film_actor as A1 , sakila.film_actor as A2
JOIN film
ON film.film_id = A2.film_id
WHERE A1.actor_id <> A2.film_id ;
# I dont know why do i get several rows per actor_id
