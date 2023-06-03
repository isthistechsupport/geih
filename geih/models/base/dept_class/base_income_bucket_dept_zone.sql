select
    sum(expf) over (partition by department, zone order by income) - expf as bucket_bottom,
    sum(expf) over (partition by department, zone order by income) as bucket_top,
    expf,
    department,
    zone,
    income
from {{ ref('base_income_dept_zone') }}
