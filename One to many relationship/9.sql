select o.orderNumber, o.status, sum(od.priceEach * od.quantityOrdered) as totalValue
from orders as o
         join orderdetails as od on o.orderNumber = od.orderNumber
where o.status = 'On Hold'
group by o.orderNumber