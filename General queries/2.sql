select e1.*
from employees as e1
         join employees as e2 on e1.reportsTo = e2.employeeNumber
where e2.firstName = 'William'
  and e2.lastName = 'Patterson';