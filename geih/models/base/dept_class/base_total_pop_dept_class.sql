select
    sum(expf) total_pop,
    department,
    class
from {{ ref('base_income_dept_class') }}
group by 2, 3
