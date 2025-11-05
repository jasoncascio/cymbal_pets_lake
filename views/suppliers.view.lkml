view: suppliers {
  sql_table_name: `cymbal_pets_lake.suppliers` ;;
  drill_fields: [supplier_id]

  dimension: supplier_id {
    primary_key: yes
    type: number
    description: "Unique identifier for the supplier."
    sql: ${TABLE}.supplier_id ;;
  }
  dimension: address_city {
    type: string
    description: "City in which the supplier is located."
    sql: ${TABLE}.address_city ;;
  }
  dimension: address_state {
    type: string
    description: "State in which the supplier is located."
    sql: ${TABLE}.address_state ;;
  }
  dimension: contact_name {
    type: string
    description: "Name of the contact person at the supplier."
    sql: ${TABLE}.contact_name ;;
  }
  dimension: email {
    type: string
    description: "Email address of the supplier."
    sql: ${TABLE}.email ;;
  }
  dimension: latitude {
    type: number
    description: "Latitude coordinate of the supplier's location."
    sql: ${TABLE}.latitude ;;
  }
  dimension: longitude {
    type: number
    description: "Longitude coordinate of the supplier's location."
    sql: ${TABLE}.longitude ;;
  }
  dimension: phone_number {
    type: string
    description: "Phone number of the supplier."
    sql: ${TABLE}.phone_number ;;
  }
  dimension: supplier_name {
    type: string
    description: "Name of the supplier."
    sql: ${TABLE}.supplier_name ;;
  }
  measure: count {
    type: count
    drill_fields: [supplier_id, contact_name, supplier_name, products.count]
  }
}
