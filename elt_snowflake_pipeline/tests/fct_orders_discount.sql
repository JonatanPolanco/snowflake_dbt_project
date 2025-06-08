SELECT
    *
FROM 
    {{ ref('fct_orders')}}
WHERE
    total_item_discount_ammount > 0