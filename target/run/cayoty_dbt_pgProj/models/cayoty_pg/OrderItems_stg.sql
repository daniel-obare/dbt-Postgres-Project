
  create view "dbt_prod"."cayoty"."OrderItems_stg__dbt_tmp"
    
    
  as (
    SELECT 
orderitemid,
orderid,
productid,
quantity,
unitprice,
quantity * unitprice AS TotalPrice,
updatedat
FROM cayoty.orderitems
  );