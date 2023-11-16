
{{config(materialized = 'incremental',unique_key= 'id')}}

with 
orders as (
SELECT idg, user_id,order_date ,_ETL_LOADED_AT  FROM raw.jaffle_shop.orders

{% if is_incremental() %}
where _ETL_LOADED_AT > (select max(_ETL_LOADED_AT) from {{ this }})
{% endif %}
)

select * from orders