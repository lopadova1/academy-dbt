with source_salesorderheader as (
    select
        CAST(salesorderid AS INTEGER) AS salesorderid,
        CAST(shipmethodid AS INTEGER) AS shipmethodid,
        CAST(billtoaddressid AS INTEGER) AS billtoaddressid,
        CAST(modifieddate AS STRING) AS modifieddate,
        CAST(rowguid AS STRING) AS rowguid,
        CAST(taxamt AS NUMERIC) AS taxamt,
        CAST(shiptoaddressid AS INTEGER) AS shiptoaddressid,
        CAST(onlineorderflag AS BOOLEAN) AS onlineorderflag,
        CAST(territoryid AS INTEGER) AS territoryid,
        CAST(status AS INTEGER) AS order_status,
        CAST(orderdate AS STRING) AS orderdate,
        CAST(creditcardapprovalcode AS STRING) AS creditcardapprovalcode,
        CAST(subtotal AS NUMERIC) AS subtotal,
        CAST(creditcardid AS INTEGER) AS creditcardid,
        CAST(currencyrateid AS INTEGER) AS currencyrateid,
        CAST(revisionnumber AS INTEGER) AS revisionnumber,
        CAST(freight AS NUMERIC) AS freight,
        CAST(duedate AS STRING) AS duedate,
        CAST(totaldue AS NUMERIC) AS totaldue,
        CAST(customerid AS INTEGER) AS customerid,
        CAST(salespersonid AS INTEGER) AS salespersonid,
        CAST(shipdate AS STRING) AS shipdate,
        CAST(accountnumber AS STRING) AS accountnumber
    from {{ source('sap', 'salesorderheader') }}
)
select *
from source_salesorderheader