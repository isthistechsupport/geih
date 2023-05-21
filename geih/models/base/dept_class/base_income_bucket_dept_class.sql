select
    sum(expf) over (partition by department, class order by income) - expf as bucket_bottom,
    sum(expf) over (partition by department, class order by income) as bucket_top,
    expf,
    department,
    class,
    income
from {{ ref('base_income_dept_class') }}
order by
    income,
    department,
    class
