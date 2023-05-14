
with source_salesorderdetail as (
    select
        cast(salesorderid as integer) as salesorderid
        , cast(orderqty as integer) as orderqty
        , cast(salesorderdetailid as integer) as salesorderdetailid
        , cast(unitprice as numeric) as unitprice
        , cast(specialofferid as integer) as specialofferid
        , cast(modifieddate as string) as modifieddate
        , cast(rowguid as string) as rowguid
        , cast(productid as integer) productid
        , cast(unitpricediscount as numeric) as unitpricediscount
    from {{ source('sap', 'salesorderdetail') }}
)
select *
from source_salesorderdetail