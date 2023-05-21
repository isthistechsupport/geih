select
    t1.quantile,
    round((t1.percentage * t2.total_pop)::numeric, 0) as index_pop
from {{ ref('seed_quartiles') }} t1
cross join {{ ref('base_total_pop') }} t2
