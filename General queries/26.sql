drop view if exists p23;
create view p23 as
select c.customerName, sum(amount) as totalAmount
from payments as p
         join customers as c on p.customerNumber = c.customerNumber
where year(paymentDate) = 2003
group by c.customerName, year(paymentDate);

drop view if exists p24;
create view p24 as
select c.customerName, sum(amount) as totalAmount
from payments as p
         join customers as c on p.customerNumber = c.customerNumber
where year(paymentDate) = 2004
group by c.customerName, year(paymentDate);

select p23.customerName as customerName, p23.totalAmount / p24.totalAmount as ratio
from p23
         join p24 on p23.customerName = p24.customerName;