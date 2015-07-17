- view: order_items
  sql_table_name: public.ORDER_ITEMS
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension: amount
    type: int
    sql: ${TABLE}.AMOUNT

  - dimension: order_id
    type: int
    # hidden: true
    sql: ${TABLE}.ORDER_ID

  - dimension: sku_num
    type: int
    sql: ${TABLE}.SKU_NUM

  - measure: count
    type: count
    drill_fields: [id, orders.id]
  
  - measure: total_amount
    sql: ${amount}
    type: sum

