# security_set

{{config(serverity= 'warn')}}

WITH order_details AS (
    select
        order_id,
        count(*) as num_of_items_in_order

    from {{ref("stg_ecommerce_order_items")}}
    group by 1

)

select 
o.*,
od.*

from{{ref("stg_ecommerce_orders")}} as o
full outer join order_details as od 
using(order_id)

where 
o.order_id is null
or od.order_id is null
or o.num_of_item != od.num_of_items_in_order