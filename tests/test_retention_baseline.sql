select *
from {{ ref('mart_retention') }}
where month_number = 0
and retention_rate != 1

