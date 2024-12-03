select concat(firstName, ' ', lastName)
from employees
where jobTitle like '%VP%'
   or jobTitle like '%Manager%';