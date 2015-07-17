- view: temp2
  sql_table_name: public.temp2
  fields:

  - dimension: fico_range_high
    type: int
    sql: ${TABLE}.fico_range_high

  - dimension: is_bad
    type: int
    sql: ${TABLE}.is_bad

  - measure: count
    type: count
    drill_fields: []

