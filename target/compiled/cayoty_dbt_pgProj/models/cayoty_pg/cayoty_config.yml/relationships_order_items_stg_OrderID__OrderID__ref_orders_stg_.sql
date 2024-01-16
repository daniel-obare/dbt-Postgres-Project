
    
    

with child as (
    select OrderID as from_field
    from "dbt_prod"."cayoty"."order_items_stg"
    where OrderID is not null
),

parent as (
    select OrderID as to_field
    from "dbt_prod"."cayoty"."orders_stg"
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


