{% macro calculate_total(amount, fee) %}
    ({{ amount }} + {{ fee }})
{% endmacro %}