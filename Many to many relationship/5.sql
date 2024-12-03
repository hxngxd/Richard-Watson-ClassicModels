select p.productname, p.MSRP
from products as p
         join orderdetails as od on p.productCode = od.productCode
where od.priceEach < p.MSRP * 0.8
group by p.productname, p.MSRP
order by p.MSRP desc;