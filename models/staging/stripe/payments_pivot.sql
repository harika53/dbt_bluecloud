with 

payments as 
(select * from {{ ref('stg_stripe')}})

,pivot as
(select 
orderid,


{% set paymentmethods = ['bank_transfer','coupon','credit_card','gift_card'] %}

{% for paymentmethod in paymentmethods %}

sum(case when paymentmethod = '{{paymentmethod}}' then amount else 0 end ) as {{paymentmethod}}_amount

{% if not loop.last %}
,
{% endif %}

{% endfor %}



FROM payments
group by orderid

 )


Select * from pivot