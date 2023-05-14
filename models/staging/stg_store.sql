with source_store as (
    select
        CAST(businessentityid AS INTEGER) AS businessentityid,
        CAST(name AS STRING) AS storename,
        CAST(salespersonid AS INTEGER) AS salespersonid,
        CAST(modifieddate AS STRING) AS modifieddate
    from {{ source('sap', 'store') }}
)
select *
from source_store