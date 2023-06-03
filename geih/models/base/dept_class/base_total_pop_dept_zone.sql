select
    sum(expf) total_pop,
    department,
    zone
from {{ ref('base_income_dept_zone') }}
group by 2, 3
