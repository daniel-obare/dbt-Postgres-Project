
  create view "dbt_prod"."cayoty"."order_items_stg__dbt_tmp"
    
    
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