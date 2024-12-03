select count(*) as numOfOrders
from orders as o
         join customers as c on o.customerNumber = c.customerNumber
where c.customerName = 'Herkku Gifts'