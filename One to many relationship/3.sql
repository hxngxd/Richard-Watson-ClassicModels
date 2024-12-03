select paymentDate, sum(amount) as totalPayment
from payments
group by paymentDate
order by paymentDate desc