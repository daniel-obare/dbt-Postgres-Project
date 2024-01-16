SELECT
OS.StoreID,
SUM(OFACT.Revenue) AS TotalRevenue
FROM
    "dbt_prod"."cayoty"."orders_stg" OS
JOIN 
    "dbt_prod"."cayoty"."orders_fact" OFACT ON OS.StoreID=OFACT.StoreID
GROUP BY 1