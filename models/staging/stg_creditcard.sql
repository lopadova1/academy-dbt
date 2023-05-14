with source_creditcard as (
    select
        cast(creditcardid as integer) as creditcardid
        , cast(cardtype as string) as cardtype
        , cast(expyear as integer ) as expyear
        , cast(modifieddate as string) as modifieddate
        , cast(expmonth as integer) as expmonth
        , cast(cardnumber as integer) as cardnumber
    from {{ source('sap', 'creditcard') }}
)
select *
from source_creditcard