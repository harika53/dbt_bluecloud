--{% set person = { 'name': 'me', 'number': 3 } %}
--{{ person}}


--{% set self = ['me', 'myself'] %}
--{{ self[1]}}



--{% set flavors = ['chocolate', 'vanilla', 'strawberry'] %} 

--{% for flavor in flavors %}

--Today I want {{ flavor }} ice cream! 

--{% endfor %}



--{% set temperature = 60.0 %} 

--On a day like this, I especially like

----{% if temperature > 70.0 %} 
--a refreshing mango sorbet. 
--{% else %} 
--A decadent chocolate ice cream. 
--{% endif %}
