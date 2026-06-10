select *
from {{ ref('stg_ga4__sessions') }}
where session_revenue < 0