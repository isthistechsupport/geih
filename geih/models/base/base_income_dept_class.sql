select
    sum(round("FEX_C18"::numeric, 0)) as expf,
    right('00' || round("DPTO"::numeric, 0)::text, 2) as department,
    round("CLASE"::numeric, 0) as class,
    round(coalesce(nullif("INGLABO", ''), '0.0')::numeric, 0) as income
from {{ source('geih', 'occupied') }}
group by 2, 3, 4
