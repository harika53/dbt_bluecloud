select 
id,
orderid,
paymentmethod,
status,
{{cents_dollars('amount')}} as amount,
created


from {{ source('stripe','payment')}}

where status='{{ var("payment_status")}}'