select
    {% for percentage in range(1, 10) %}
        round({{ (percentage | float) / 10.0 }} * total_pop, 0) as d_{{ percentage }},
    {% endfor %}
    department
from {{ ref('base_total_pop_dept') }}
