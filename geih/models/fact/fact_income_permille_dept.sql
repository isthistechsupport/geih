select
    t1.quantile,
    t1.department,
    t3.name as department_name,
    t2.income
from {{ ref('base_permille_dept') }} t1
join {{ ref('base_income_bucket_dept') }} t2
on t1.department = t2.department
and t1.index_pop between t2.bucket_bottom and t2.bucket_top
join {{ ref('seed_divipola') }} t3
on t1.department = right('0' || t3.code::text, 2)
