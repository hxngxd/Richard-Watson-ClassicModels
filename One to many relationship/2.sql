select c.customerName, sum(p.amount) as totalPayment
from payments as p
         join customers as c on c.customerNumber = p.customerNumber
where c.customerName = 'Atelier graphique';