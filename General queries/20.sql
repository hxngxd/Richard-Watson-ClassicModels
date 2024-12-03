drop view if exists a;
create view a as
select c.customerName,
       sum(od.quantityOrdered * od.priceEach)                                        as revenue,
       sum(od.quantityOrdered * p.buyPrice)                                          as buyPrice,
       sum(od.quantityOrdered * od.priceEach) - sum(od.quantityOrdered * p.buyPrice) as profit
from customers as c
         join orders as o on c.customerNumber = o.customerNumber
         join orderdetails as od on o.orderNumber = od.orderNumber
         join products as p on od.productCode = p.productCode
group by c.customerName;

select *,
       profit / (select sum(profit)
                 from a) * 100 as profitPercentage
from a
order by profit desc;