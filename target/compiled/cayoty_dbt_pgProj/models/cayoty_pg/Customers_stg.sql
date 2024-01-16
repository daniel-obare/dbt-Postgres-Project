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
FROM --cayoty.customers
    "dbt_prod"."cayoty"."customers"