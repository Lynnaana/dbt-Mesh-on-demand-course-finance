with orders as (
    select * from {{ ref('jaffle_shop', 'orders') }}
),

agg as (
    select
        ordered_at,
        count(order_id) as order_count,
        sum(order_total) as orders_revenue
    from orders 
    group by 1
)

select * from agg