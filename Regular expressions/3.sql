select country, count(*) as numberOfCustomers
from customers
where country in ('Denmark', 'Norway', 'Sweden')
group by country