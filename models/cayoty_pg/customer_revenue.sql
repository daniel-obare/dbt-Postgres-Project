{{ config(materialized='view') }}

SELECT
OS.customerid,
C.CustomerName,
SUM(OS.OrderCount) AS OrderCount,
SUM(OS.Revenue) AS Revenue
FROM 
    {{ ref('orders_fact') }} OS
JOIN 
    {{ ref('customers_stg') }} C ON OS.CUSTOMERID = C.CUSTOMERID
GROUP BY 
    OS.customerid,
    C.CustomerName