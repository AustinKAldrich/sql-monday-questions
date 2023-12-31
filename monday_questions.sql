--How many actors are there with the last name ‘Wahlberg’?
select count(last_name)
from actor
where last_name = 'Wahlberg';

--How many payments were made between $3.99 and $5.99?
select count(amount)
from payment
where amount > 3.99 and amount < 5.99;

--What film does the store have the most of? (search in inventory)
select film_id, count(film_id)
from inventory
group by film_id
order by count(film_id) desc;
--There are 69 films all of which have 8 copies

--How many customers have the last name ‘William’?
select count(last_name)
from customer
where last_name = 'William';

--What store employee (get the id) sold the most rentals?
select staff_id, count(rental_id)
from rental
group by staff_id;

--How many different district names are there?
select count(distinct district)
from address;

--What film has the most actors in it? (use film_actor table and get film_id)
select film_id, count(actor_id)
from film_actor
group by film_id
order by count(actor_id) desc;

--From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
select count(last_name)
from customer
where store_id = 1
and last_name like '%es';

--How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
--with ids between 380 and 430? (use group by and having > 250)
select count(amount)
from payment
where customer_id > 380 and customer_id < 430
having count(amount) > 250;

--Within the film table, how many rating categories are there? And what rating has the most movies total?
select count(distinct rating)
from film;
select rating, count(film_id)
from film
group by rating;





