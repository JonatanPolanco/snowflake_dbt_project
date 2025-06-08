select
    O_ORDERKEY AS order_key,
    O_CUSTKEY AS customer_key,
    O_ORDERSTATUS AS status_code,
    O_TOTALPRICE AS total_price,
    O_ORDERDATE AS order_date
FROM
    {{ source('tpch', 'orders') }}