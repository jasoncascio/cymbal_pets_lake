view: customers {
  sql_table_name: `cymbal_pets_lake.customers` ;;
  drill_fields: [customer_id]

  dimension: customer_id {
    primary_key: yes
    type: number
    description: "Unique identifier for the customer."
    sql: ${TABLE}.customer_id ;;
  }
  dimension: address_city {
    type: string
    description: "The city in the customer's address."
    sql: ${TABLE}.address_city ;;
  }
  dimension: address_state {
    type: string
    description: "The state in the customer's address."
    sql: ${TABLE}.address_state ;;
  }
  dimension: email {
    type: string
    description: "The customer's email address."
    sql: ${TABLE}.email ;;
  }
  dimension: first_name {
    type: string
    description: "The customer's first name."
    sql: ${TABLE}.first_name ;;
  }
  dimension: gender {
    type: string
    description: "The customer's gender."
    sql: ${TABLE}.gender ;;
  }
  dimension: last_name {
    type: string
    description: "The customer's last name."
    sql: ${TABLE}.last_name ;;
  }
  dimension: loyalty_member {
    type: yesno
    description: "Indicates whether the customer is a loyalty program member."
    sql: ${TABLE}.loyalty_member ;;
  }
  measure: count {
    type: count
    drill_fields: [customer_id, last_name, first_name, pet_profiles.count, orders.count]
  }
}
