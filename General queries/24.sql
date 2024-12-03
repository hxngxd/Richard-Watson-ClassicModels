select pl.productLine,
       sum(od.quantityOrdered * od.priceEach) - sum(od.quantityOrdered * p.buyPrice) as profit
from productlines as pl
         join products as p on pl.productLine = p.productLine
         join orderdetails as od on p.productCode = od.productCode
group by pl.productLine
order by profit desc