view: orders {
  sql_table_name: `cymbal_pets_lake.orders` ;;
  drill_fields: [order_id]

  dimension: order_id {
    primary_key: yes
    type: number
    description: "Unique identifier for the order."
    sql: ${TABLE}.order_id ;;
  }
  dimension: customer_id {
    type: number
    description: "Unique identifier for the customer who placed the order."
    # hidden: yes
    sql: ${TABLE}.customer_id ;;
  }
  dimension_group: order {
    type: time
    description: "The date when the order was placed."
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.order_date ;;
  }
  dimension: order_type {
    type: string
    description: "The type of order placed."
    sql: ${TABLE}.order_type ;;
  }
  dimension: payment_method {
    type: string
    description: "The method used to pay for the order."
    sql: ${TABLE}.payment_method ;;
  }
  dimension: shipping_address_city {
    type: string
    description: "The city to which the order was shipped."
    sql: ${TABLE}.shipping_address_city ;;
  }
  dimension: store_id {
    type: number
    description: "Unique identifier for the store where the order was placed."
    # hidden: yes
    sql: ${TABLE}.store_id ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	order_id,
	stores.store_id,
	stores.store_name,
	customers.last_name,
	customers.customer_id,
	customers.first_name,
	order_items.count
	]
  }

}
