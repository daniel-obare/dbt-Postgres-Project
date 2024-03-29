WITH CUSTOMER_ORDERS AS (
SELECT 
    C.CUSTOMERID,
    CONCAT(C.FIRSTNAME, ' ', C.LASTNAME) AS CUSTOMERNAME,
    COUNT(O.ORDERID) AS NO_OF_ORDERS
FROM 
    {{ source('schema_name', 'cust') }} C
JOIN 
    {{ source('schema_name', 'ordr') }} O ON C.CUSTOMERID = O.CUSTOMERID
GROUP BY 
    C.CUSTOMERID, CUSTOMERNAME
ORDER BY 
    NO_OF_ORDERS DESC
)

SELECT CUSTOMERID, CUSTOMERNAME, NO_OF_ORDERS FROM CUSTOMER_ORDERS