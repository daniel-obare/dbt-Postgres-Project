--define the expected record counts for each table
{% set expected_counts = {
    'customers': 50,
    'employees': 20,
    'stores': 10,
    'supplier': 5,
    'products': 100,
    'orderitems':1000,
    'orders': 200
    }
%}

--test count of records of each table
{% for table, expected_count in expected_counts.items() %}
SELECT '{{ table }}' AS table_name,
    (SELECT COUNT(*) FROM {{ source('schema_name', table) }}) AS record_count,
    {{ expected_count }} AS expected_record_count
WHERE (SELECT COUNT(*) FROM {{ source('schema_name', table) }}) < {{ expected_count }}
{% if not loop.last %} UNION ALL {% endif %}
{% endfor %}