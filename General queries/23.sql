select p.productName, sum(od.quantityOrdered * od.priceEach) as revenue
from orderdetails as od
         join products p on od.productCode = p.productCode
group by p.productName
order by p.productName