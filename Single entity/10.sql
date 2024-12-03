select *
from payments
where amount > 2 * (select avg(amount)
                    from payments);