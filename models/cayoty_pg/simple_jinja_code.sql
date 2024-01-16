{# jinja SELECT statements to print number #}
{% set max_number = 10 %}
{% for i in range(max_number) %}
SELECT {{ i }} AS Number
    {% if not loop.last %}
        UNION
    {% endif %}
{% endfor %}