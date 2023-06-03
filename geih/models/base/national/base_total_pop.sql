select
    sum(expf) total_pop
from {{ ref('base_income_dept_zone') }}
