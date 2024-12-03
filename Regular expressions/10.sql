select concat(firstName, ' ', lastName) as fullName
from employees
where concat(firstName, ' ', lastName) rlike '[0-9%@]';