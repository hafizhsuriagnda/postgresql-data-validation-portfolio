
select r.customer_id 
from rental r
left join customer c
on r.customer_id = c.customer_id
where c.customer_id is null;

select r.inventory_id
from rental r
left join inventory i
on r.inventory_id = i.inventory_id
where i.inventory_id is null;

select i.film_id 
from inventory i
left join film f
on i.film_id = f.film_id 
where f.film_id is null;

select p.rental_id 
from payment p
left join rental r
on p.rental_id = r.rental_id
where r.rental_id is null;

select rental_id, rental_date, return_date
from rental
where return_date < rental_date;

select r.rental_id
from rental r
left join customer c on r.customer_id = c.customer_id 
left join inventory i on r.inventory_id = i.inventory_id 
left join film f on i.film_id = f.film_id
where c.customer_id is null
or i.inventory_id is null
or f.film_id is null;

select fa.film_id, fa.actor_id 
from film_actor fa
left join film f on fa.film_id = f.film_id
left join actor a on fa.actor_id = a.actor_id
where f.film_id is null
or a.actor_id is null;

select p.payment_id, p.customer_id 
from payment p 
left join customer c
on p.customer_id = c.customer_id
where c.customer_id is null;

select i.inventory_id, i.store_id 
from inventory i
left join store s
on i.store_id = s.store_id
where s.store_id is null;

select c.customer_id 
from customer c
left join customer_list cl
on c.customer_id = cl.id
where cl.id is null;

select f.film_id --ts_db_11 (failcheck)
from film f 
left join film_list fl
on f.film_id = fl.fid 
where fl.fid is null;

SELECT definition --cek definisi tabel view film_list
FROM pg_views
WHERE viewname = 'film_list';

select f.film_id --ts_db_11 (root cause no actor)
from film f
left join film_actor fa 
on f.film_id = fa.film_id
where fa.film_id is null;

select s.store_id, sum(p.amount) as calculated_total --ts_db_12 payment, staff, store relations
from payment p
join staff st on p.staff_id = st.staff_id 
join store s on st.store_id = s.store_id 
group by s.store_id;

select store, total_sales --ts_db_12 cek kolom
from sales_by_store;

select s.store_id, SUM(p.amount) as calculated_total --ts_db_12 payment, rental, inventory, store relations
from payment p
join rental r on p.rental_id = r.rental_id
join inventory i on r.inventory_id = i.inventory_id
join store s on i.store_id = s.store_id
group by s.store_id;

select c.name as category, sum(p.amount) as calculated_total
from payment p 
join rental r on p.rental_id = r.rental_id 
join inventory i on r.inventory_id = i.inventory_id 
join film f on i.film_id = f.film_id 
join film_category fc on f.film_id = fc.film_id 
join category c on fc.category_id = c.category_id 
group by c.name;

select sbfc.category, sbfc.total_sales, calc.calculated_total 
from sales_by_film_category sbfc 
join (
	select c.name as category, sum(p.amount) as calculated_total
	from payment p
	join rental r on p.rental_id = r.rental_id
	join inventory i on r.inventory_id = i.inventory_id
	join film f on i.film_id = f.film_id
	join film_category fc on f.film_id = fc.film_id
	join category c on fc.category_id = c.category_id
	group by c.name
) calc
on sbfc.category = calc.category 
where sbfc.total_sales <> calc.calculated_total;

select *
from customer
where first_name = 'MARY';

select c.first_name, f.title, r.rental_date 
from customer c 
join rental r on c.customer_id = r.customer_id 
join inventory i on r.inventory_id = i.inventory_id 
join film f on i.film_id = f.film_id 
where c.first_name = 'MARY';