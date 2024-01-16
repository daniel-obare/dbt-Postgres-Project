SELECT
    OS.StoreID,
    SUM(OFACT.Revenue) AS ActualSales,
    SUM(ST.salestarget) AS TargetSales
FROM
    {{ ref('orders_stg') }} OS
JOIN 
    {{ ref('orders_fact') }} OFACT ON OS.orderid=OFACT.orderid
JOIN
    {{ ref('sales_target') }} ST ON ST.storeid=OS.storeid
GROUP BY 1