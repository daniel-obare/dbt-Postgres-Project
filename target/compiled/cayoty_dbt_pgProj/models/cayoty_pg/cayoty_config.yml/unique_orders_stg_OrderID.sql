
    
    

select
    OrderID as unique_field,
    count(*) as n_records

from "dbt_prod"."cayoty"."orders_stg"
where OrderID is not null
group by OrderID
having count(*) > 1


