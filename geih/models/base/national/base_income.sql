select
    sum(round("FEX_C18"::numeric, 0)) as expf,
    round(coalesce(nullif("INGLABO", ''), '0.0')::numeric, 0) as income
from {{ source('source', 'occupied') }}
group by 2
