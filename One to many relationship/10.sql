select customerName,
       (select count(*)
        from orders as o
        where o.customerNumber = c.customerNumber
          and o.status = 'On Hold') as totalOnHold
from customers as c
order by totalOnHold desc;