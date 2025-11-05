view: pet_profiles {
  sql_table_name: `cymbal_pets_lake.pet_profiles` ;;
  drill_fields: [pet_id]

  dimension: pet_id {
    primary_key: yes
    type: number
    description: "Unique identifier for each pet."
    sql: ${TABLE}.pet_id ;;
  }
  dimension: activity_level {
    type: string
    description: "Description of the pet's typical activity level."
    sql: ${TABLE}.activity_level ;;
  }
  dimension: age {
    type: number
    description: "Age of the pet in years."
    sql: ${TABLE}.age ;;
  }
  dimension: customer_id {
    type: number
    description: "Unique identifier for the pet's owner."
    # hidden: yes
    sql: ${TABLE}.customer_id ;;
  }
  dimension: dietary_needs {
    type: string
    description: "Specific dietary requirements or restrictions for the pet."
    sql: ${TABLE}.dietary_needs ;;
  }
  dimension: nickname {
    type: string
    description: "Nickname of the pet."
    sql: ${TABLE}.nickname ;;
  }
  dimension: pet_name {
    type: string
    description: "Official name of the pet."
    sql: ${TABLE}.pet_name ;;
  }
  dimension: pet_type {
    type: string
    description: "Category or breed of the pet."
    sql: ${TABLE}.pet_type ;;
  }
  dimension: weight {
    type: number
    description: "Weight of the pet in pounds."
    sql: ${TABLE}.weight ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	pet_id,
	pet_name,
	nickname,
	customers.last_name,
	customers.customer_id,
	customers.first_name
	]
  }

}
