
    SELECT Email
    FROM "dbt_prod"."cayoty"."customers_stg"
    WHERE Email IS NULL OR TRIM(Email) = ''
