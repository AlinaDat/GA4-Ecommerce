select *
from {{ ref('mart_funnel') }}
where item_to_cart_rate > 1
   or cart_to_checkout_rate > 1
   or checkout_to_purchase_rate > 1

   -- має повернути 0 рядків 