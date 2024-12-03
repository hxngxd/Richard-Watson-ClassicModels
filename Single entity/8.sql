select productLine, count(productCode) as numberOfProducts
from products
group by productLine;