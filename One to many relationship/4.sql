select *
from products
where productCode not in (select od.productCode
                          from orders as o
                                   join orderdetails as od on o.orderNumber = od.orderNumber
                          where o.status = 'Shipped'
                          group by od.productCode);