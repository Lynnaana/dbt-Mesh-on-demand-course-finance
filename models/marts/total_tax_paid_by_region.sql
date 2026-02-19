with orders as (
    select * from {{ ref('jaffle_shop', 'orders') }}
),

final as (
    select 
        sum(tax_paid) as total_tax_paid,
        count(order_id) as order_count
    from orders
)

select * from final