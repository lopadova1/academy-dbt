with source_customer as (
    select
        cast(customerid as integer) as customerid
        , cast(personid as integer) as personid
        , cast(storeid as integer) as storeid
        , cast(territoryid as integer) as territoryid
    from {{ source('sap', 'customer') }}
)
select *
from source_customer