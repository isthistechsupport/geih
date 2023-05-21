select
    {% for percentage in range(1, 100) %}
        round({{ (percentage | float) / 100.0 }} * total_pop, 0) as c_{{ percentage }},
    {% endfor %}
    department,
    class
from {{ ref('base_total_pop_dept_class') }}
