
  create view "dbt_prod"."cayoty"."customers_stg__dbt_tmp"
    
    
  as (
    SELECT
customerid,
firstname,
lastname,
email,
phone,
address,
city,
state,
zipcode,
updatedat,
CONCAT(FirstName, ' ', LastName) AS CustomerName
FROM cayoty.customers
  );