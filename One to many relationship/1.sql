select c.customerName, concat(e.firstName, ' ', e.lastName) as accountRep
from customers as c
         join employees as e on c.salesRepEmployeeNumber = e.employeeNumber;