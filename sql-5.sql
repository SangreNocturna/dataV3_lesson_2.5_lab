use sakila;
 -- 1. Select all the actors with the first name ‘Scarlett’
 select actor_id, first_name, last_name from sakila.actor
 where first_name = 'Scarlett';
 
 -- 2. How many films (movies) are available for rent and how many films have been rented?
 select rental_id, rental_date, inventory_id as 'currently_rented' from sakila.rental;

-- 3. What are the shortest and longest movie duration? Name the values max_duration and min_duration
select max(length) as 'max_length', min(length) as 'min_length' from sakila.film;

-- 4. What's the average movie duration expressed in format (hours, minutes)?
-- select avg(length) as 'average_length of the film' from sakila.film;

-- 5. How many distinct (different) actors' last names are there?
 select distinct last_name from sakila.actor;
 
 -- 6. Since how many days has the company been operating (check DATEDIFF() function)?


-- 7. Show rental info with additional columns month and weekday. Get 20 results
SELECT *, month(rental_date) as month, day(rental_date) as day FROM sakila.rental
LIMIT 20;

-- 8. Add an additional column day_type with values 'weekend' and 'workday' depending on the rental day of the week
SELECT *, month(rental_date) as month, day(rental_date) as day, rental_date as day_type FROM sakila.rental
where rental_date = day(rental_date);


-- 9. Get release years
select * from sakila.film;
select title, release_year 
from sakila.film;

-- 10. Get all films with ARMAGEDDON in the title.
select * from sakila.film
where title like 'ARMAGEDDON%';

-- 11. Get all films which title ends with APOLLO
select * from sakila.film
where title like '%APOLLO';

-- 12. Get 10 the longest films
select title, length from sakila.film
ORDER BY length DESC
limit 10;

-- 13. How many films include Behind the Scenes content?
select count(special_features) as 'Behind the Scenes' from sakila.film
where special_features like '%Behind the Scenes';