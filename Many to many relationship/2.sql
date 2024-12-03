select o.orderNumber, o.orderDate, p.productName
from orders as o
         join orderdetails as od on o.orderNumber = od.orderNumber
         join products as p on od.productCode = p.productCode
where p.productName = '1940 Ford Pickup Truck'
order by o.orderDate desc;