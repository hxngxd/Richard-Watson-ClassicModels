select o.orderNumber, o.orderDate, p.productCode, p.productName
from orders as o
         join orderdetails as od on o.orderNumber = od.orderNumber
         join products as p on od.productCode = p.productCode
where o.status = 'Shipped'
order by o.orderDate desc