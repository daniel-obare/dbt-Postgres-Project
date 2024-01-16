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
    {{ source('schema_name', 'cust') }}