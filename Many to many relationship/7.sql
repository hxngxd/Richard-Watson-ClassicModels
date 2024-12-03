select p.productName
from orders as o
         join orderdetails as od on o.orderNumber = od.orderNumber
         join products as p on od.productCode = p.productCode
where DAYNAME(o.orderDate) = 'MONDAY'
group by p.productCode;