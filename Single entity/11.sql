select avg((MSRP - buyPrice) / MSRP) * 100 as avgPercentage
from products;