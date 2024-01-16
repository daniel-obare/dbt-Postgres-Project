SELECT 
orderid,
orderdate,
customerid,
employeeid,
storeid,
status AS statusid,
CASE 
    WHEN status = '01' THEN 'In Progress'
    WHEN status = '02' THEN 'Completed'
    WHEN status = '03' THEN 'Cancelled'
    ELSE 'On Hold'
END AS statusdesc,
updatedat
FROM 
    "dbt_prod"."cayoty"."orders"