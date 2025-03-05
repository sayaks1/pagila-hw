/*
 * Use a JOIN to list each film and the number of actors who are listed for that film.
 * Use tables film and film_actor.
 */
SELECT film.title, film.film_id, COUNT(*) AS actor_count
FROM film
JOIN film_actor ON film.film_id = film_actor.film_id
GROUP BY film.title, film.film_id
ORDER BY actor_count, film.title, film.film_id;
