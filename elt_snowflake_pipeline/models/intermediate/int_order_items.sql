SELECT
    line_items.order_item_key,
    line_items.part_key,
    line_items.line_number,
    line_items.extended_price,
    orders.order_key,
    orders.customer_key,
    orders.order_date,
    {{discounted_ammount('line_items.extended_price', 'line_items.discount_percentage')}} AS item_discount
FROM
    {{ref('stg_orders')}} as orders
JOIN
    {{ref('stg_line_items')}} as line_items
ON orders.order_key = line_items.order_key
order by orders.order_date