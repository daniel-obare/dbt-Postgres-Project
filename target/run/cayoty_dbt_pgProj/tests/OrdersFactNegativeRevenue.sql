select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      -- SELECT 
-- OrderID
-- FROM "dbt_prod"."cayoty"."Orders_fact"
-- WHERE Revenue < 0
      
    ) dbt_internal_test