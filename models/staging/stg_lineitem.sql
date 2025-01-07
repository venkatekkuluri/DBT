SELECT
    l_orderkey AS order_key,
    l_partkey AS part_key,
    l_suppkey AS supplier_key,
    l_linenumber AS line_number,
    l_quantity AS quantity,
    l_extendedprice AS extended_price,
    l_discount AS discount,
    l_tax AS tax,
    l_returnflag AS return_flag,
    l_linestatus AS line_status,
    CAST(l_shipdate AS DATE) AS ship_date,
    CAST(l_commitdate AS DATE) AS commit_date,
    CAST(l_receiptdate AS DATE) AS receipt_date,
    l_shipinstruct AS ship_instruction,
    l_shipmode AS ship_mode,
    l_comment AS comment
FROM {{ source('SALES_DATA', 'LINEITEM') }}
