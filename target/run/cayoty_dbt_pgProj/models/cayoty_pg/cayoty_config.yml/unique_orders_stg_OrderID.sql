select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select
    OrderID as unique_field,
    count(*) as n_records

from "dbt_prod"."cayoty"."orders_stg"
where OrderID is not null
group by OrderID
having count(*) > 1



      
    ) dbt_internal_test