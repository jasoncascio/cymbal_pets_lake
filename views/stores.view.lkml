view: stores {
  sql_table_name: `cymbal_pets_lake.stores` ;;
  drill_fields: [store_id]

  dimension: store_id {
    primary_key: yes
    type: number
    description: "Unique identifier for the store."
    sql: ${TABLE}.store_id ;;
  }
  dimension: address_city {
    type: string
    description: "City where the store is located."
    sql: ${TABLE}.address_city ;;
  }
  dimension: address_state {
    type: string
    description: "State where the store is located."
    sql: ${TABLE}.address_state ;;
  }
  dimension: latitude {
    type: number
    description: "Latitude coordinate of the store location."
    sql: ${TABLE}.latitude ;;
  }
  dimension: longitude {
    type: number
    description: "Longitude coordinate of the store location."
    sql: ${TABLE}.longitude ;;
  }
  dimension: manager_id {
    type: number
    description: "Unique identifier for the store manager."
    sql: ${TABLE}.manager_id ;;
  }
  dimension: opening_hours__friday {
    type: string
    description: "Opening hours for Friday."
    sql: ${TABLE}.opening_hours.Friday ;;
    group_label: "Opening Hours"
    group_item_label: "Friday"
  }
  dimension: opening_hours__monday {
    type: string
    description: "Opening hours for Monday."
    sql: ${TABLE}.opening_hours.Monday ;;
    group_label: "Opening Hours"
    group_item_label: "Monday"
  }
  dimension: opening_hours__saturday {
    type: string
    description: "Opening hours for Saturday."
    sql: ${TABLE}.opening_hours.Saturday ;;
    group_label: "Opening Hours"
    group_item_label: "Saturday"
  }
  dimension: opening_hours__sunday {
    type: string
    description: "Opening hours for Sunday."
    sql: ${TABLE}.opening_hours.Sunday ;;
    group_label: "Opening Hours"
    group_item_label: "Sunday"
  }
  dimension: opening_hours__thursday {
    type: string
    description: "Opening hours for Thursday."
    sql: ${TABLE}.opening_hours.Thursday ;;
    group_label: "Opening Hours"
    group_item_label: "Thursday"
  }
  dimension: opening_hours__tuesday {
    type: string
    description: "Opening hours for Tuesday."
    sql: ${TABLE}.opening_hours.Tuesday ;;
    group_label: "Opening Hours"
    group_item_label: "Tuesday"
  }
  dimension: opening_hours__wednesday {
    type: string
    description: "Opening hours for Wednesday."
    sql: ${TABLE}.opening_hours.Wednesday ;;
    group_label: "Opening Hours"
    group_item_label: "Wednesday"
  }
  dimension: store_name {
    type: string
    description: "Name of the store."
    sql: ${TABLE}.store_name ;;
  }
  measure: count {
    type: count
    drill_fields: [store_id, store_name, orders.count]
  }
}
