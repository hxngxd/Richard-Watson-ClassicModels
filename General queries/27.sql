drop view if exists in24;

create view in24 as
select distinct p.productCode
from products as p
         join orderdetails as od on p.productCode = od.productCode
         join orders as o on od.orderNumber = o.orderNumber
where year(orderDate) = 2004;

select distinct p.productCode
from products as p
         join orderdetails as od on p.productCode = od.productCode
         join orders as o on od.orderNumber = o.orderNumber
where year(orderDate) = 2003
  and p.productCode not in (select * from in24)
order by p.productCode;