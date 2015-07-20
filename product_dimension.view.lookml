- view: product_dimension
  sql_table_name: public.product_dimension
  fields:

  - dimension: average_competitor_price
    type: int
    sql: ${TABLE}.average_competitor_price

  - dimension: category_description
    sql: ${TABLE}.category_description

  - dimension: department_description
    sql: ${TABLE}.department_description
    label: "Online product department"
    html: |
      {{ linked_value }}
      <a href="/dashboards/vmart1/online_sales_dash?product_type={{ value | encode_uri }}" target= "_new">
      <img src="/images/qr-graph-line@2x.png" height=20 width=20></a>
      
      
  - dimension: store_department_description
    sql: ${TABLE}.department_description
    html: |
      {{ linked_value }}
      <a href="/dashboards/vmart1/store_sales_dash?product_type={{ value | encode_uri }}" target= "_new">
      <img src="/images/qr-graph-line@2x.png" height=20 width=20></a>
    
  - dimension: diet_type
    sql: ${TABLE}.diet_type

  - dimension: discontinued_flag
    type: int
    sql: ${TABLE}.discontinued_flag

  - dimension: fat_content
    type: int
    sql: ${TABLE}.fat_content

  - dimension: highest_competitor_price
    type: int
    sql: ${TABLE}.highest_competitor_price

  - dimension: lowest_competitor_price
    type: int
    sql: ${TABLE}.lowest_competitor_price

  - dimension: package_size
    sql: ${TABLE}.package_size

  - dimension: package_type_description
    sql: ${TABLE}.package_type_description

  - dimension: product_cost
    type: int
    sql: ${TABLE}.product_cost

  - dimension: product_description
    sql: ${TABLE}.product_description

  - dimension: product_key
    type: int
    sql: ${TABLE}.product_key

  - dimension: product_price
    type: int
    sql: ${TABLE}.product_price

  - dimension: product_version
    type: int
    sql: ${TABLE}.product_version

  - dimension: shelf_depth
    type: int
    sql: ${TABLE}.shelf_depth

  - dimension: shelf_height
    type: int
    sql: ${TABLE}.shelf_height

  - dimension: shelf_width
    type: int
    sql: ${TABLE}.shelf_width

  - dimension: sku_number
    sql: ${TABLE}.sku_number

  - dimension: weight
    type: int
    sql: ${TABLE}.weight

  - dimension: weight_units_of_measure
    sql: ${TABLE}.weight_units_of_measure

  - measure: count
    type: count
    drill_fields: []

  - measure: avg_competitor_price
    type: avg
    sql: ${TABLE}.average_competitor_price
