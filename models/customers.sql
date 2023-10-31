
--I need customers with their names and the order details.
{{ config(materialized ='table') }}

with customers as (
SELECT * from {{ ref('stg_customers') }}
),

orders as (
SELECT * from {{ ref('stg_orders')}}
),


final as(
SELECT customers.id as cust_id,customers.first_name,customers.last_name,orders.id as order_id,orders.order_date from customers
left join orders on customers.id = orders.user_id
)


select * from final