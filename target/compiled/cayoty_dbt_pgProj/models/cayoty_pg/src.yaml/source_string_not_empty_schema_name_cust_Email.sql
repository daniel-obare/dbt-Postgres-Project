
    SELECT Email
    FROM "dbt_prod"."cayoty"."customers"
    WHERE Email IS NULL OR TRIM(Email) = ''
