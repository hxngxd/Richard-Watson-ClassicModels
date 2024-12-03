select e.employeeNumber,
       concat(e.firstName, ' ', e.lastName)   as fullName,
       sum(od.quantityOrdered * od.priceEach) as revenue
from orders as o
         join customers as c on o.customerNumber = c.customerNumber
         join employees as e on c.salesRepEmployeeNumber = e.employeeNumber
         join orderdetails as od on o.orderNumber = od.orderNumber
         join products as p on od.productCode = p.productCode
group by e.employeeNumber;