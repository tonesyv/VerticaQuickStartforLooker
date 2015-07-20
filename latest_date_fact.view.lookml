- view: latest_date_fact
  derived_table:
    sql: |
      SELECT 
        MAX(DATE(date_dimension.date)) AS latest_date
      FROM public.inventory_fact AS inventory_fact
      INNER JOIN public.date_dimension AS date_dimension ON inventory_fact.date_key = date_dimension.date_key
      WHERE 1=1
      AND {% condition date_dimension.date_date %} date_dimension.date {% endcondition %}

  fields:

  - dimension: latest_date
    sql: ${TABLE}.latest_date
    primary_key: true
    hidden: true
  
  - dimension: is_latest_date
    type: yesno
    sql: ${latest_date} = ${date_dimension.date_date}
    
  sets:
    detail:
      - latest_date

