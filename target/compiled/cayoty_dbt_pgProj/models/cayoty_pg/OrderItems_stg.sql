SELECT 
orderitemid,
orderid,
productid,
quantity,
unitprice,
quantity * unitprice AS TotalPrice,
updatedat
FROM cayoty.orderitems