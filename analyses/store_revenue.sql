SELECT
OS.StoreID,
SUM(OFACT.Revenue) AS TotalRevenue
FROM
    {{ ref('orders_stg') }} OS
JOIN 
    {{ ref('orders_fact') }} OFACT ON OS.StoreID=OFACT.StoreID
GROUP BY 1