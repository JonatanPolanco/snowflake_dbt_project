SELECT
    order_key,
    SUM(extended_price) AS gross_item_sales_ammount,
    SUM(item_discount) AS total_item_discount_ammount
FROM 
    {{ ref('int_order_items') }}
GROUP BY order_key