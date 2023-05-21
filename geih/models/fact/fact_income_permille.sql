select
    t1.quantile,
    t2.income
from {{ ref('base_permille') }} t1
join {{ ref('base_income_bucket') }} t2
on t1.index_pop between t2.bucket_bottom and t2.bucket_top
