- dashboard: inventory_dashboard
  title: Inventory Dashboard
  layout: tile
  tile_size: 100

  #layout: grid
  #rows: 
  #  - elements: [total_average_quantity_in_stock]
  #    height: 200
  #  - elements: [breakdown_by_category]
  #    height: 400
  #  - elements: [breakdown_by_department]
  #    height: 400


  filters:
  - name: date
    title: "Inventory timestamp"
    type: date_filter
    default_value: 2003/01/01 to 2007/12/31

  
  elements:
  - name: total_average_quantity_in_stock
    title: Total Average Quantity in Stock
    type: single_value
    model: vmart1
    explore: inventory_fact
    measures: [inventory_fact.average_qty_in_stock]
    listen: 
      date: inventory_fact.date_date
    limit: 500
    column_limit: ''
    font_size: medium
    width: 6
    height: 2
      
  - name: breakdown_by_category
    title: Inventory Breakdown by Product Category 
    type: table
    model: vmart1
    explore: inventory_fact
    dimensions: [product_dimension.category_description]
    measures: [inventory_fact.average_qty_in_stock]
    sorts: [inventory_fact.average_qty_in_stock desc]
    limit: 500
    column_limit: ''
    width: 6
    height: 2
    
    
  - name: breakdown_by_department
    title: Inventory Breakdown by Product Department 
    type: looker_bar
    model: vmart1
    explore: inventory_fact
    dimensions: [product_dimension.category_description, product_dimension.store_department_description]
    pivots: [product_dimension.store_department_description]
    measures: [inventory_fact.average_qty_in_stock]
    listen: 
      date: inventory_fact.date_date
    sorts: [product_dimension.category_description desc]
    limit: 500
    column_limit: ''
    stacking: percent
    show_view_names: false
    hide_legend: false
    show_value_labels: false
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_gridlines: false
    x_axis_scale: ordinal
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_gridlines: true
    y_axis_combined: false
    show_dropoff: false
    show_null_labels: false
    show_null_points: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    width: 6
    height: 4
  

  - name: inventory_overtime_by_warehouse
    title: Inventory Overtime by Warehouse
    type: looker_pie
    model: vmart1
    explore: inventory_fact
    dimensions: [warehouse_dimension.warehouse_region]
    measures: [inventory_fact.average_qty_in_stock]
    sorts: [inventory_fact.average_qty_in_stock desc]
    limit: 500
    column_limit: ''
    show_view_names: true
    hide_legend: false
    show_null_labels: false
    stacking: ''
    show_value_labels: false
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_gridlines: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_gridlines: true
    y_axis_tick_density: default
    x_axis_scale: ordinal
    show_null_points: true
    interpolation: linear
    point_style: none
    y_axis_tick_density_custom: 5
    
  - name: total_inventory_overtime
    title: Inventory Overtime
    type: looker_line
    model: vmart1
    explore: inventory_fact
    dimensions: [date_dimension.date_month]
    measures: [inventory_fact.average_qty_in_stock]
    listen: 
      date: inventory_fact.date_date
    sorts: [date_dimension.date_month]
    limit: 500
    column_limit: ''
    show_view_names: true
    stacking: normal
    show_value_labels: false
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_gridlines: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_gridlines: true
    y_axis_tick_density: default
    hide_legend: false
    x_axis_scale: ordinal
    show_null_labels: false
    show_null_points: true
    interpolation: linear
    point_style: circle_outline
    y_axis_tick_density_custom: 5
    width: 12
    height: 4
