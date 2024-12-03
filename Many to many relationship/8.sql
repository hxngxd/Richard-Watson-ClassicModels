select p.productCode, p.productName, sum(p.quantityInStock) as totalQuantity
from orders as o
         join orderdetails as od on o.orderNumber = od.orderNumber
         join products as p on od.productCode = p.productCode
where o.status = 'On Hold'
group by p.productCode
order by totalQuantity desc;