drop view if exists paymentIn2023;
create view paymentIn2023 as
select c.customerNumber
from customers as c
         join payments as p on c.customerNumber = p.customerNumber
where year(p.paymentDate) = 2003
group by c.customerNumber;

select customerName
from customers
where customerNumber not in (select * from paymentIn2023)
order by customerName;