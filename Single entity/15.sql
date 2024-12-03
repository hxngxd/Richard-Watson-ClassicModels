select orderNumber, sum(priceEach * quantityOrdered) as totalValue
from orderdetails
group by orderNumber
having totalValue > 5000
order by totalValue;