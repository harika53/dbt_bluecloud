



with customers as (

SELECT ID as cust_id,first_name,last_name FROM {{source('jaffle_shop','customers')}})


SELECT * FROM customers