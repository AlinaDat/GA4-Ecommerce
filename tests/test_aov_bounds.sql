select *
from {{ ref('mart_executive_kpi') }}
where aov < 0
