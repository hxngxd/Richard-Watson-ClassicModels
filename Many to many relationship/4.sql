select p.productCode, p.productName, count(distinct od.orderNumber) as inNumOfOrders
from products as p
         join orderdetails as od on p.productCode = od.productCode
group by p.productCode
having inNumOfOrders = (select count(*)
                        from orders);