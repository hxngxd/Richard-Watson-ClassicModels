select customerName, amount
from payments as p
         join customers as c on p.customerNumber = c.customerNumber
where amount > 100000
order by amount desc