select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select Email
from "dbt_prod"."cayoty"."customers"
where Email is null



      
    ) dbt_internal_test