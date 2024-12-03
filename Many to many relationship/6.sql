select p.productCode, p.productName
from products as p
         join orderdetails as od on p.productCode = od.productCode
where od.priceEach / p.buyPrice >= 2
group by p.productCode;