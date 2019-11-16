-- Copies of Films

Create view title_count as
Select title,
	(Select 
	 Count(film_id) as "Number of Copies"
	 from inventory
	 where film.film_id = inventory.film_id)
from film


-- Movies with 7 copies

Select * from title_count
where "Number of Copies" = 7