select
    t1.quantile,
    t2.income
from {{ ref('base_permille_dept_class') }} t1
join {{ ref('base_income_bucket_dept_class') }} t2
on t1.index_pop between t2.bucket_bottom and t2.bucket_top
