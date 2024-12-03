select e.*, o.city
from employees as e
         join offices as o on e.officeCode = o.officeCode
where o.city = 'Boston';