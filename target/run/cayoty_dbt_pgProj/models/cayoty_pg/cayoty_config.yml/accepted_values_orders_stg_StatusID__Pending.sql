select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

with all_values as (

    select
        StatusID as value_field,
        count(*) as n_records

    from "dbt_prod"."cayoty"."orders_stg"
    group by StatusID

)

select *
from all_values
where value_field not in (
    'Pending'
)



      
    ) dbt_internal_test