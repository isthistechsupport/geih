select
    sum(expf) total_pop,
    department
from {{ ref('base_income_dept_zone') }}
group by 2
