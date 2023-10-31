with 
orders as (
SELECT id, user_id,order_date FROM raw.jaffle_shop.orders)

select * from orders