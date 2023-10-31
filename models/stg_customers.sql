with customers as (
SELECT ID,first_name,last_name FROM raw.jaffle_shop.customers)

SELECT * FROM customers