select
    sum(expf) over (partition by department order by income) - expf as bucket_bottom,
    sum(expf) over (partition by department order by income) as bucket_top,
    expf,
    department,
    income
from {{ ref('base_income_dept') }}
