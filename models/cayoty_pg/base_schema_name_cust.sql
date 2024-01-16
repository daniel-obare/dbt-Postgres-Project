with source as (
      select * from {{ source('schema_name', 'cust') }}
),
renamed as (
    select
        

    from source
)
select * from renamed
  