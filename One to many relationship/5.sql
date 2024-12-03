select c.customerNumber, c.customerName, sum(p.amount) as totalPayment
from customers as c
         join payments as p on c.customerNumber = p.customerNumber
group by c.customerNumber
order by totalPayment desc;