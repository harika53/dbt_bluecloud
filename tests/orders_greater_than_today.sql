select id,max(order_date)
from raw.jaffle_shop.orders
group by id
having  max(order_date) >= current_date()