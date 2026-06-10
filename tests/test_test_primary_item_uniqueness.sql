select
    transaction_id
from {{ ref('stg_ga4__purchases') }}

where is_primary_item

group by 1

having count(*) > 1