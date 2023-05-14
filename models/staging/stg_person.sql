with source_person as (
    select
        cast(businessentityid as integer) as businessentityid
        , cast(title as string) as title
        , cast(firstname as string) as firstname
        , cast(middlename as string) as middlename
        , cast(lastname as string) as lastname
        , cast(persontype as string) as persontype
        , cast(namestyle as boolean) as namestyle
        , cast(suffix as string) as suffix
        , cast(modifieddate as string) as modifieddate
        , cast(rowguid as string) as rowguid
        , cast(emailpromotion as integer) as emailpromotion
    from {{ source('sap', 'person') }}
)
select *
from source_person