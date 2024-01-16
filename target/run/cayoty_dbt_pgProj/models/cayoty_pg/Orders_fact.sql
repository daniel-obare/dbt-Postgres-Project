
  create view "dbt_prod"."cayoty"."orders_fact__dbt_tmp"
    
    
  as (
    


SELECT
o.orderid,
o.orderdate,
o.customerid,
o.employeeid,
o.storeid,
o.statusid,
o.statusdesc,
o.updatedat,
COUNT(DISTINCT o.orderid) as OrderCount,
SUM(OI.TotalPrice)  AS Revenue
FROM 
    "dbt_prod"."cayoty"."orders_stg" O
JOIN 
    "dbt_prod"."cayoty"."order_items_stg" OI ON OI.ORDERID = O.ORDERID
GROUP BY 
o.orderid,
o.orderdate,
o.customerid,
o.employeeid,
o.storeid,
o.statusid,
o.statusdesc,
o.updatedat
  );