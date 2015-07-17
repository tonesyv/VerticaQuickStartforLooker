- dashboard: store_sales_dash
  title: Store Sales Dash
  layout: tile
  tile_size: 100


  filters:
  
  - name: date
    type: date_filter
  - name: customer_type
    type: field_filter
    explore: store_sales_fact
    field: customer_dimension.customer_type
    #default_value:
  - name: measure_type
    type: field_filter
    explore: store_sales_fact
    field: store_sales_fact.measure_type
    default_value: Sales
  - name: product_type
    type: field_filter
    explore: store_sales_fact
    field: product_dimension.store_department_description
    
    

  elements:

  - name: store_total
    title: Store total
    type: single_value
    model: vmart1
    explore: store_sales_fact
    measures: [store_sales_fact.measure_total]
    filters:
      store_sales_fact.transaction_type: '"purchase"'
    listen: 
      customer_type: customer_dimension.customer_type
      date: date_dimension.date_date
      measure_type: store_sales_fact.measure_type
      #product_type: product_dimension.store_department_description
    sorts: [store_sales_fact.measure_total desc]
    limit: 500
    column_limit: ''
    stacking: ''
    show_value_labels: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    show_null_labels: false
    font_size: medium
    
  - name: add_a_unique_name_540
    title: Store Sales Performance Overtime
    type: looker_line
    model: vmart1
    explore: store_sales_fact
    dimensions: [date_dimension.calendar_year_quarter]
    measures: [store_sales_fact.measure_total]
    filters:
      store_sales_fact.transaction_type: '"purchase"'
    listen: 
      customer_type: customer_dimension.customer_type
      date: date_dimension.date_date
      measure_type: store_sales_fact.measure_type
    sorts: [date_dimension.calendar_year_quarter]
    limit: 500
    column_limit: ''
    show_null_points: true
    stacking: ''
    show_value_labels: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    point_style: none
    interpolation: linear
    
  - name: add_a_unique_name_810
    title: Store Sales Regional Sales
    type: looker_geo_choropleth
    model: vmart1
    explore: store_sales_fact
    dimensions: [customer_dimension.customer_state]
    measures: [store_sales_fact.measure_total]
    filters:
      store_sales_fact.transaction_type: '"purchase"'
    listen: 
      customer_type: customer_dimension.customer_type
      date: date_dimension.date_date
      measure_type: store_sales_fact.measure_type
    sorts: [store_sales_fact.measure_total desc]
    limit: 500
    column_limit: ''
    map: usa
    map_projection: ''
    show_view_names: true
    quantize_colors: false
    colors: []
    loading: false
      
  - name: add_a_unique_name_731
    title: Top 5 Store Customers
    type: looker_bar
    model: vmart1
    explore: store_sales_fact
    dimensions: [customer_dimension.customer_name]
    measures: [store_sales_fact.measure_total]
    filters:
      store_sales_fact.transaction_type: '"purchase"'
    listen: 
      customer_type: customer_dimension.customer_type
      date: date_dimension.date_date
      measure_type: store_sales_fact.measure_type
    sorts: [store_sales_fact.measure_total desc]
    limit: 5
    column_limit: ''
    stacking: ''
    show_value_labels: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    show_null_labels: false
        
  - name: add_a_unique_name_778
    title: Top 10 Products in Store Sales
    type: table
    model: vmart1
    explore: store_sales_fact
    dimensions: [product_dimension.store_department_description]
    measures: [store_sales_fact.measure_total]
    filters:
      store_sales_fact.transaction_type: '"purchase"'
    listen: 
      customer_type: customer_dimension.customer_type
      date: date_dimension.date_date
      measure_type: store_sales_fact.measure_type
    sorts: [store_sales_fact.measure_total desc]
    limit: 10
    column_limit: ''
        
        
  - name: add_a_unique_name_7
    title: Promotion Comparison
    type: looker_pie
    model: vmart1
    explore: store_sales_fact
    dimensions: [promotion_dimension.ad_media_name]
    measures: [store_sales_fact.measure_total]
    filters:
      store_sales_fact.transaction_type: '"purchase"'
    listen: 
      customer_type: customer_dimension.customer_type
      date: date_dimension.date_date
      measure_type: store_sales_fact.measure_type
    sorts: [store_sales_fact.measure_total desc]
    limit: 500
    column_limit: ''
    show_view_names: true
    inner_radius: 40
    
  - name: add_a_unique_name_947
    title: Top 10 Employees in Store Sales
    type: looker_bar
    model: vmart1
    explore: store_sales_fact
    dimensions: [employee_dimension.employee_full_name]
    measures: [store_sales_fact.measure_total]
    filters:
      store_sales_fact.transaction_type: '"purchase"'
    listen: 
      customer_type: customer_dimension.customer_type
      date: date_dimension.date_date
      measure_type: store_sales_fact.measure_type
    sorts: [store_sales_fact.measure_total desc]
    limit: 10
    column_limit: ''
    show_null_points: true
    show_view_names: true
    stacking: ''
    show_value_labels: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    show_null_labels: false
      
