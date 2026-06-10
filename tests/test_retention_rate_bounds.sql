select *
from {{ ref('mart_retention') }}
where retention_rate < 0
   or retention_rate > 1