select
    {% for percentage in range(1, 1000) %}
        round({{ (percentage | float) / 1000.0 }} * total_pop, 0) as m_{{ percentage }}{% if not loop.last %},{% endif %}
    {% endfor %}
from {{ ref('base_total_pop') }}
