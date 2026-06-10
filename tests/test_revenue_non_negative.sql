select *
from {{ ref('mart_executive_kpi') }}
where revenue < 0