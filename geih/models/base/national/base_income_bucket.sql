select
    sum(expf) over (order by income) - expf as bucket_bottom,
    sum(expf) over (order by income) as bucket_top,
    expf,
    income
from {{ ref('base_income') }}
