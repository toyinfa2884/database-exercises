select *
from order_item
where ExtendedPrice >= 100
and ExtendedPrice <= 200
order by ExtendedPrice;