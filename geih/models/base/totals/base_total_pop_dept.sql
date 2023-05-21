select
    sum(expf) total_pop,
    department
from {{ ref('base_income_dept_class') }}
group by 2
