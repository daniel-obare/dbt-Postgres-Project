select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    SELECT Email
    FROM "dbt_prod"."cayoty"."customers"
    WHERE Email IS NULL OR TRIM(Email) = ''

      
    ) dbt_internal_test