
    SELECT Email
    FROM "dbt_prod"."cayoty"."Customers_stg"
    WHERE Email IS NULL OR TRIM(Email) = ''
