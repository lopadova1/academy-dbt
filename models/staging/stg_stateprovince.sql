with source_stateprovince as (
    select
        CAST(stateprovinceid AS INTEGER) AS stateprovinceid,
        CAST(countryregioncode AS STRING) AS countryregioncode,
        CAST(modifieddate AS STRING) AS modifieddate,
        CAST(rowguid AS STRING) AS rowguid,
        CAST(name AS STRING) AS state_name,
        CAST(territoryid AS INTEGER) AS territoryid,
        CAST(isonlystateprovinceflag AS BOOLEAN) AS isonlystateprovinceflag,
        CAST(stateprovincecode AS STRING) AS stateprovincecode
    from {{ source('sap', 'stateprovince') }}
)
select *
from source_stateprovince