{{ config(materialized='view') }}


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
    {{ ref('orders_stg') }} O
JOIN 
    {{ ref('order_items_stg') }} OI ON OI.ORDERID = O.ORDERID
GROUP BY 
o.orderid,
o.orderdate,
o.customerid,
o.employeeid,
o.storeid,
o.statusid,
o.statusdesc,
o.updatedat 