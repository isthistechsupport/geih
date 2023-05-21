select
    t1.quantile,
    t2.income,
    t1.department
from {{ ref('base_permille_dept') }} t1
join {{ ref('base_income_bucket_dept') }} t2
on t1.department = t2.department
and t1.index_pop between t2.bucket_bottom and t2.bucket_top
