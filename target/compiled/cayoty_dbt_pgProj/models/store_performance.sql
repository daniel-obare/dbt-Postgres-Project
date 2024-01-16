SELECT
    OS.StoreID,
    SUM(OFACT.Revenue) AS ActualSales,
    SUM(ST.salestarget) AS TargetSales
FROM
    "dbt_prod"."cayoty"."orders_stg" OS
JOIN 
    "dbt_prod"."cayoty"."orders_fact" OFACT ON OS.orderid=OFACT.orderid
JOIN
    "dbt_prod"."cayoty"."sales_target" ST ON ST.storeid=OS.storeid
GROUP BY 1