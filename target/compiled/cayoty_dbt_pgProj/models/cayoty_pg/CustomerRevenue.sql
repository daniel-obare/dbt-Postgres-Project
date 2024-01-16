

SELECT
OS.customerid,
C.CustomerName,
SUM(OS.OrderCount) AS OrderCount,
SUM(OS.Revenue) AS Revenue
FROM 
    "dbt_prod"."cayoty"."Orders_fact" OS
JOIN 
    "dbt_prod"."cayoty"."Customers_stg" C ON OS.CUSTOMERID = C.CUSTOMERID
GROUP BY 
    OS.customerid,
    C.CustomerName