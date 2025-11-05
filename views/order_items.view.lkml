view: order_items {
  sql_table_name: `cymbal_pets_lake.order_items` ;;
  drill_fields: [order_item_id]

  dimension: order_item_id {
    primary_key: yes
    type: number
    description: "The unique identifier for the order item."
    sql: ${TABLE}.order_item_id ;;
  }
  dimension: cost {
    type: number
    description: "The cost of the item."
    sql: ${TABLE}.cost ;;
  }
  dimension: order_id {
    type: number
    description: "The unique identifier for the order."
    # hidden: yes
    sql: ${TABLE}.order_id ;;
  }
  dimension: price {
    type: number
    description: "The price of the item."
    sql: ${TABLE}.price ;;
  }
  dimension: product_id {
    type: number
    description: "The unique identifier for the product."
    # hidden: yes
    sql: ${TABLE}.product_id ;;
  }
  dimension: quantity {
    type: number
    description: "The number of units of the item in the order."
    sql: ${TABLE}.quantity ;;
  }
  measure: count {
    type: count
    drill_fields: [order_item_id, products.product_name, products.product_id, orders.order_id]
  }
}
