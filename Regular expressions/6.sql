select concat(firstName, ' ', lastName) AS employeeName
from Employees
where lastName rlike 'Dianne|Diane'
   or firstName rlike 'Dianne|Diane'