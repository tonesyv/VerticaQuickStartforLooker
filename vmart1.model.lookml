- connection: vmart

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards

- explore: order_items
  joins:
    - join: orders
      foreign_key: order_id

    - join: users
      foreign_key: orders.user_id
      
- explore: store_sales_fact
  fields: [ALL_FIELDS*, -product_dimension.department_description]
  joins:
    - join: customer_dimension
      foreign_key: customer_key
      type: inner
    
    - join: date_dimension
      foreign_key: date_key
      type: inner
    
    - join: product_dimension
      sql_on: store_sales_fact.product_key = product_dimension.product_key and store_sales_fact.product_version = product_dimension.product_version
      relationship: many_to_one
      type: inner
    
    - join: promotion_dimension
      foreign_key: promotion_key
      type: inner
      
    - join: employee_dimension
      foreign_key: employee_key
      #view_label: ""
      type: inner
    
    - join: store_dimension
      foreign_key: store_key
      #view_label: ""
      type: inner
      
- explore: online_sales_fact
  fields: [ALL_FIELDS*, -product_dimension.store_department_description]
  joins: 
    - join: customer_dimension
      foreign_key: customer_key
      type: inner
    
    - join: date_dimension_sales
      from: date_dimension
      foreign_key: sale_date_key
      type: inner
    
    - join: date_dimension_ship
      from: date_dimension
      foreign_key: ship_date_key
      type: inner
    
    - join: product_dimension
      sql_on: online_sales_fact.product_key = product_dimension.product_key and online_sales_fact.product_version = product_dimension.product_version
      relationship: many_to_one
      type: inner
      
    - join: call_center_dimension
      foreign_key: call_center_key
      type: inner
    
    - join: promotion_dimension
      foreign_key: promotion_key
      type: inner
      
    - join: shipping_dimension
      foreign_key: shipping_key
      type: inner
      
    - join: warehouse_dimension
      foreign_key: warehouse_key
      type: inner
       
- explore: store_orders_fact
  joins:
    - join: vendor_dimension
      foreign_key: vendor_key
      type: inner

    - join: store_dimension
      foreign_key: store_key
      type: inner


- explore: inventory_fact
  joins:
    - join: product_dimension
      sql_on: inventory_fact.product_key = product_dimension.product_key and inventory_fact.product_version = product_dimension.product_version
      #relationship: many_to_one
      type: inner
      
    - join: date_dimension
      foreign_key: date_key
      type: inner      
    
    - join: warehouse_dimension
      foreign_key: inventory_fact.warehouse_key
      type: inner
    


# 
# - explore: call_center_dimension
# 
# - explore: customer_dimension
# 
# - explore: date_dimension
# 
# - explore: employee_dimension
# 
# - explore: foo
# 
# 
# - explore: iris
# 
# - explore: listings
# 
# - explore: loan_rejects
# 
# - explore: loan_stats
# 
# - explore: mountains_hybrid
# 
# - explore: mountains_hybrid_keys
# 
# - explore: online_page_dimension
# 
# - explore: online_sales_fact
# 
# - explore: ontime
# 
# 
# 
# 
# - explore: orders
#   joins:
#     - join: users
#       foreign_key: user_id
# 
# 
# - explore: person
# 
# - explore: product_dimension
# 
# - explore: promotion_dimension
# 
# - explore: r_models
# 
# - explore: shipping_dimension
# 
# - explore: temp2
# 
# - explore: testing
# 
# - explore: training
# 
# - explore: users
# 
# - explore: vendor_dimension
# 
# - explore: warehouse_dimension
# 
