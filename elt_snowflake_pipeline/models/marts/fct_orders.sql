SELECT
    orders.*,
    order_items_summary.gross_item_sales_ammount,
    order_items_summary.total_item_discount_ammount
FROM
    {{ ref('stg_orders') }} AS orders
JOIN
    {{ ref('int_order_items_summary') }} AS order_items_summary
ON orders.order_key = order_items_summary.order_key
order by orders.order_date