select *
from customers
where customerName like '%1%'
   or customerName like '%2%'
   or customerName like '%3%'
   or customerName like '%4%'
   or customerName like '%5%'
   or customerName like '%6%'
   or customerName like '%7%'
   or customerName like '%8%'
   or customerName like '%9%'
   or customerName like '%0%';

-- or

select *
from customers
where customerName rlike '[0-9]';