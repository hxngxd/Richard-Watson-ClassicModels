select c.customerName, o.orderNumber, sum(od.quantityOrdered * od.priceEach) as totalValue
from orders as o
         join orderdetails as od on o.orderNumber = od.orderNumber
         join customers as c on o.customerNumber = c.customerNumber
group by o.orderNumber
having totalValue > 25000;