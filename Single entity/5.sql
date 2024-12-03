select sum(payments.amount) as TotalPayments
from payments
where paymentDate = '2004-10-28';