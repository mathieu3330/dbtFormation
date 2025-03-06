-- Define the expected record counts for each table
{% set expected_counts = {
    "adresseTelephoniqueBDL": 6,
    "adresseDomicileBDL": 4,
    "personneBDL": 4
} %}
 
-- Test the count of records in each table
{% for table, expected_count in expected_counts.items() %}
SELECT
    '{{ table }}' AS table_name,
    {{ expected_count }} AS expected_count
FROM {{ ref(table) }}
    WHERE (SELECT COUNT(*) FROM {{ ref(table) }}) != {{ expected_count }}
{% if not loop.last %}
UNION ALL
{% endif %}
{% endfor %}