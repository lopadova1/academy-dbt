with source_product as (
    select
        cast(productid as integer) as personid
        , cast(name as string) as product_name
        , cast(safetystocklevel as string) as safetystocklevel
        , cast(finishedgoodsflag as boolean) as finishedgoodsflag
        , cast(class as string) as class
        , cast(makeflag as boolean) as makeflag
        , cast(productnumber as string) as productnumber
        , cast(reorderpoint as integer) as reorderpoint
        , cast(modifieddate as string) as modifieddate
        , cast(rowguid as string) as rowguid
        , cast(productmodelid as integer) as productmodelid
        , cast(weightunitmeasurecode as string) as weightunitmeasurecode
        , cast(standardcost as numeric) as standardcost
        , cast(productsubcategoryid as integer) as productsubcategoryid
        , cast(listprice as numeric) as listprice
        , cast(daystomanufacture as integer) as daystomanufacture
        , cast(productline as string) as productline
        , cast(color as string) as color
        , cast(sellstartdate as string) as sellstartdate
        , cast(weight as numeric) as product_weight
    from {{ source('sap', 'product') }}
)
select *
from source_product