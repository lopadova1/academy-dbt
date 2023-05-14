with source_salesorderheadersalesreason as (
    select
        cast(salesorderid as integer) as salesorderid
        , cast(modifieddate as string) as modifieddate
        , cast(salesreasonid as integer) as salesreasonid
    from {{ source('sap', 'salesorderheadersalesreason') }}
)
select *
from source_salesorderheadersalesreason