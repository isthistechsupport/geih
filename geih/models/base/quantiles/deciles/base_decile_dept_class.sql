select
    t1.quantile,
    round((t1.percentage * t2.total_pop)::numeric, 0) as index_pop,
    t2.department,
    t2.class
from {{ ref('seed_deciles') }} t1
cross join {{ ref('base_total_pop_dept_class') }} t2
