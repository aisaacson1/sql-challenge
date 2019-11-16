-- All Parties View

Create view all_parties as
Select first_name as "First Name", last_name as "Last Name", 'actor' as source
From actor
Union
Select first_name, last_name, 'staff' as source
From staff
Union
Select first_name, last_name, 'customer' as source
From customer;

Select * from all_parties;

-- Customers in London

Select *
from 
	(Select id, city
	 from customer_list
	 Union
	 Select customer_id, first_name
	 from customer) as foo
where foo.city='London';

-- Union Tables

Select Count(nums.id) as num_count, nums.id
From(
	Select id
	from customer_list
	Union All
	Select customer_id
	from customer) as nums
Group by nums.id 
Order by num_count ASC;
