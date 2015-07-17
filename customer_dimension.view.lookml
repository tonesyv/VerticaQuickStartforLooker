- view: customer_dimension
  sql_table_name: public.customer_dimension
  fields:

  - dimension: annual_income
    type: int
    sql: ${TABLE}.annual_income

  - dimension: customer_address
    sql: ${TABLE}.customer_address

  - dimension: customer_age
    type: int
    sql: ${TABLE}.customer_age
  
  - dimension: customer_age_range
    type: tier
    sql: ${customer_age}
    tiers: [0,18,25,35,50,75]
    style: integer

  - dimension: customer_city
    sql: ${TABLE}.customer_city

  - dimension: customer_gender
    sql: ${TABLE}.customer_gender

  - dimension: customer_key
    primary_key: true
    type: int
    sql: ${TABLE}.customer_key

  - dimension: customer_name
    sql: ${TABLE}.customer_name

  - dimension: customer_region
    sql: ${TABLE}.customer_region

  - dimension_group: customer_since
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.customer_since

  - dimension: customer_state
    sql: ${TABLE}.customer_state

  - dimension: customer_type
    sql: ${TABLE}.customer_type

  - dimension: deal_size
    type: int
    sql: ${TABLE}.deal_size

  - dimension: deal_stage
    sql: ${TABLE}.deal_stage

  - dimension: household_id
    type: int
    sql: ${TABLE}.household_id

  - dimension: largest_bill_amount
    type: int
    sql: ${TABLE}.largest_bill_amount

  - dimension_group: last_deal_update
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.last_deal_update

  - dimension: marital_status
    sql: ${TABLE}.marital_status

  - dimension: number_of_children
    type: int
    sql: ${TABLE}.number_of_children

  - dimension: occupation
    sql: ${TABLE}.occupation

  - dimension: store_membership_card
    type: int
    sql: ${TABLE}.store_membership_card

  - dimension: title
    sql: ${TABLE}.title

  - measure: count
    type: count
    drill_fields: [customer_name]

