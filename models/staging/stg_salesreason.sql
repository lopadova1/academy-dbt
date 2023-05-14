
with source_salesreason as (
    select
        cast(salesreasonid as integer) as salesreasonid
        , cast(name as string) as reason_name
        , cast(reasontype as string) as reasontype
        , cast(modifieddate as string) as modifieddate
    from {{ source('sap', 'salesreason') }}
)
select *
from source_salesreason