select *
from {{ ref('mart_user_ltv') }}
where total_revenue < 0