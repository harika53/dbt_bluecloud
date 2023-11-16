
{% macro cents_dollars(col_name) %}

{% if target.name =='dev' %}
round({{col_name}}/100,2)
{% endif %}

{% endmacro %}