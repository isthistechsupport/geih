select
    {% for percentage in range(1, 4) %}
        round({{ (percentage | float) / 4.0 }} * total_pop, 0) as q_{{ percentage }},
    {% endfor %}
    department,
    class
from {{ ref('base_total_pop_dept_class') }}
