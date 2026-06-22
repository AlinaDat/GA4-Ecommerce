{{ config(materialized = 'table') }}

-- Грануляція = реальне замовлення (order_key, НЕ transaction_id!)
-- transaction_id залишений для traceability, але не унікальний (15 колізій знайдено)

select
    order_key,
    transaction_id,
    event_date_dt as order_date,
    user_pseudo_id,
    ga_session_id,
    concat(user_pseudo_id, '-', cast(ga_session_id as string)) as session_id,
    session_source as source,
    session_medium as medium,
    channel_group,
    device_category,
    country,
    purchase_revenue as revenue
from {{ ref('int_purchase_events_deduped') }}
