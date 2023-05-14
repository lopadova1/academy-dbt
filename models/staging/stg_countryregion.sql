with   
    source_countryregion as (
        select
            CAST(countryregioncode AS STRING) AS countryregioncode
            , CAST(name AS STRING) AS name
            , CAST(modifieddate AS STRING) AS modifieddate

    from {{ source('sap', 'countryregion') }}
)
select *
from source_countryregion