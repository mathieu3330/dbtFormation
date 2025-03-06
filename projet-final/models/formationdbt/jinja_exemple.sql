-- This Jinja code generates SELECT statements to print the months of the year
{% set months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"] %}
 
{% for month in months %}
SELECT '{{ month }}' AS month_name
{% if not loop.last %}
UNION ALL
{% endif %}
{% endfor %}
 