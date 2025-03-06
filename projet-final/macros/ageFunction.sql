{% macro calculate_age(date_of_birth) %}
    DATE_DIFF(CURRENT_DATE(), {{ date_of_birth }}, YEAR)
{% endmacro %}
 