
--I need customers with their names and the order details.
{{ config(materialized='table', transient=false) }}

with customers as (
SELECT * from {{ ref('stg_customers') }}
),

orders as (
SELECT * from {{ ref('stg_orders')}}
),


final as(
SELECT customers.cust_id as cust_id,customers.first_name,customers.last_name,orders.id as order_id,orders.order_date from customers
left join orders on customers.cust_id= orders.user_id
)


select * from final
where cust_id =1