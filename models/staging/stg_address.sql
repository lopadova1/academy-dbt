with source_adress as (
    select
        cast(addressid as integer) as  addressid
        , cast(stateprovinceid as integer) as stateprovinceid
        , cast(addressline1	as string) as addressline1
        , cast(addressline2 as string) as addressline2
        , cast(city as string)  as city
        , cast(modifieddate as string) as modifieddate
        , cast(rowguid as string) as rowguid
    from {{ source('sap', 'address') }}
)
select *
from source_adress