view: orders_denormalized {
  sql_table_name: `@{gcp_project}.@{bq_dataset}.orders_denormalized` ;;

  dimension: customers_address_city {
    type: string
    description: "City of the customer's address."
    sql: ${TABLE}.customers_address_city ;;
  }
  dimension: customers_address_state {
    type: string
    description: "State of the customer's address."
    sql: ${TABLE}.customers_address_state ;;
  }
  dimension: customers_customer_id {
    type: number
    description: "Unique identifier for the customer."
    sql: ${TABLE}.customers_customer_id ;;
  }
  dimension: customers_email {
    type: string
    description: "Email address of the customer."
    sql: ${TABLE}.customers_email ;;
  }
  dimension: customers_first_name {
    type: string
    description: "First name of the customer."
    sql: ${TABLE}.customers_first_name ;;
  }
  dimension: customers_gender {
    type: string
    description: "Gender of the customer."
    sql: ${TABLE}.customers_gender ;;
  }
  dimension: customers_last_name {
    type: string
    description: "Last name of the customer."
    sql: ${TABLE}.customers_last_name ;;
  }
  dimension: customers_loyalty_member {
    type: yesno
    description: "Indicates whether the customer is a loyalty member."
    sql: ${TABLE}.customers_loyalty_member ;;
  }
  dimension: order_items_cost {
    type: number
    description: "Cost of the order item."
    sql: ${TABLE}.order_items_cost ;;
  }
  dimension: order_items_order_item_id {
    type: number
    description: "Unique identifier for the order item."
    sql: ${TABLE}.order_items_order_item_id ;;
  }
  dimension: order_items_price {
    type: number
    description: "Price of the order item."
    sql: ${TABLE}.order_items_price ;;
  }
  dimension: order_items_quantity {
    type: number
    description: "Quantity of the order item."
    sql: ${TABLE}.order_items_quantity ;;
  }
  dimension_group: orders_order {
    type: time
    description: "Date when the order was placed."
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.orders_order_date ;;
  }
  dimension: orders_order_id {
    type: number
    description: "Unique identifier for the order."
    sql: ${TABLE}.orders_order_id ;;
  }
  dimension: orders_order_type {
    type: string
    description: "Type of order, such as online or offline."
    sql: ${TABLE}.orders_order_type ;;
  }
  dimension: orders_payment_method {
    type: string
    description: "Payment method used for the order."
    sql: ${TABLE}.orders_payment_method ;;
  }
  dimension: pet_profiles_activity_level {
    type: string
    description: "Activity level of the pet."
    sql: ${TABLE}.pet_profiles_activity_level ;;
  }
  dimension: pet_profiles_age {
    type: number
    description: "Age of the pet."
    sql: ${TABLE}.pet_profiles_age ;;
  }
  dimension: pet_profiles_dietary_needs {
    type: string
    description: "Dietary needs of the pet."
    sql: ${TABLE}.pet_profiles_dietary_needs ;;
  }
  dimension: pet_profiles_nickname {
    type: string
    description: "Nickname of the pet."
    sql: ${TABLE}.pet_profiles_nickname ;;
  }
  dimension: pet_profiles_pet_id {
    type: number
    description: "Unique identifier for the pet."
    sql: ${TABLE}.pet_profiles_pet_id ;;
  }
  dimension: pet_profiles_pet_name {
    type: string
    description: "Name of the pet."
    sql: ${TABLE}.pet_profiles_pet_name ;;
  }
  dimension: pet_profiles_pet_type {
    type: string
    description: "Type of pet, such as cat or dog."
    sql: ${TABLE}.pet_profiles_pet_type ;;
  }
  dimension: pet_profiles_weight {
    type: number
    description: "Weight of the pet."
    sql: ${TABLE}.pet_profiles_weight ;;
  }
  dimension: products_average_rating {
    type: number
    description: "Average rating of the product."
    sql: ${TABLE}.products_average_rating ;;
  }
  dimension: products_brand {
    type: string
    description: "Brand of the product."
    sql: ${TABLE}.products_brand ;;
  }
  dimension: products_category {
    type: string
    description: "Category of the product."
    sql: ${TABLE}.products_category ;;
  }
  dimension: products_cost {
    type: number
    description: "Cost of the product."
    sql: ${TABLE}.products_cost ;;
  }
  dimension: products_description {
    type: string
    description: "Description of the product."
    sql: ${TABLE}.products_description ;;
  }
  dimension: products_image_url {
    type: string
    description: "URL of the product image."
    sql: ${TABLE}.products_image_url ;;
  }
  dimension: products_inventory_level {
    type: number
    description: "Inventory level of the product."
    sql: ${TABLE}.products_inventory_level ;;
  }
  dimension: products_nutritional_info__calories_per_serving {
    type: number
    description: "Calories per serving of the product."
    sql: ${TABLE}.products_nutritional_info.calories_per_serving ;;
    group_label: "Products Nutritional Info"
    group_item_label: "Calories per Serving"
  }
  dimension: products_nutritional_info__calories_per_treat {
    type: number
    description: "Calories per treat of the product."
    sql: ${TABLE}.products_nutritional_info.calories_per_treat ;;
    group_label: "Products Nutritional Info"
    group_item_label: "Calories per Treat"
  }
  dimension: products_nutritional_info__fiber_content {
    type: string
    description: "Fiber content of the product."
    sql: ${TABLE}.products_nutritional_info.fiber_content ;;
    group_label: "Products Nutritional Info"
    group_item_label: "Fiber Content"
  }
  dimension: products_nutritional_info__ingredients {
    hidden: yes
    sql: ${TABLE}.products_nutritional_info.ingredients ;;
    group_label: "Products Nutritional Info"
    group_item_label: "Ingredients"
  }
  dimension: products_nutritional_info__protein_content {
    type: string
    description: "Protein content of the product."
    sql: ${TABLE}.products_nutritional_info.protein_content ;;
    group_label: "Products Nutritional Info"
    group_item_label: "Protein Content"
  }
  dimension: products_nutritional_info__vitamin_c_content {
    type: string
    description: "Vitamin C content of the product."
    sql: ${TABLE}.products_nutritional_info.vitamin_c_content ;;
    group_label: "Products Nutritional Info"
    group_item_label: "Vitamin C Content"
  }
  dimension: products_price {
    type: number
    description: "Price of the product."
    sql: ${TABLE}.products_price ;;
  }
  dimension: products_product_id {
    type: number
    description: "Unique identifier for the product."
    sql: ${TABLE}.products_product_id ;;
  }
  dimension: products_product_name {
    type: string
    description: "Name of the product."
    sql: ${TABLE}.products_product_name ;;
  }
  dimension: products_subcategory {
    type: string
    description: "Subcategory of the product."
    sql: ${TABLE}.products_subcategory ;;
  }
  dimension: stores_address_city {
    type: string
    description: "City of the store's address."
    sql: ${TABLE}.stores_address_city ;;
  }
  dimension: stores_address_state {
    type: string
    description: "State of the store's address."
    sql: ${TABLE}.stores_address_state ;;
  }
  dimension: stores_latitude {
    type: number
    description: "Latitude of the store's location."
    sql: ${TABLE}.stores_latitude ;;
  }
  dimension: stores_longitude {
    type: number
    description: "Longitude of the store's location."
    sql: ${TABLE}.stores_longitude ;;
  }
  dimension: stores_manager_id {
    type: number
    description: "Unique identifier for the store manager."
    sql: ${TABLE}.stores_manager_id ;;
  }
  dimension: stores_opening_hours__friday {
    type: string
    description: "Opening hours of the store on Friday."
    sql: ${TABLE}.stores_opening_hours.Friday ;;
    group_label: "Stores Opening Hours"
    group_item_label: "Friday"
  }
  dimension: stores_opening_hours__monday {
    type: string
    description: "Opening hours of the store on Monday."
    sql: ${TABLE}.stores_opening_hours.Monday ;;
    group_label: "Stores Opening Hours"
    group_item_label: "Monday"
  }
  dimension: stores_opening_hours__saturday {
    type: string
    description: "Opening hours of the store on Saturday."
    sql: ${TABLE}.stores_opening_hours.Saturday ;;
    group_label: "Stores Opening Hours"
    group_item_label: "Saturday"
  }
  dimension: stores_opening_hours__sunday {
    type: string
    description: "Opening hours of the store on Sunday."
    sql: ${TABLE}.stores_opening_hours.Sunday ;;
    group_label: "Stores Opening Hours"
    group_item_label: "Sunday"
  }
  dimension: stores_opening_hours__thursday {
    type: string
    description: "Opening hours of the store on Thursday."
    sql: ${TABLE}.stores_opening_hours.Thursday ;;
    group_label: "Stores Opening Hours"
    group_item_label: "Thursday"
  }
  dimension: stores_opening_hours__tuesday {
    type: string
    description: "Opening hours of the store on Tuesday."
    sql: ${TABLE}.stores_opening_hours.Tuesday ;;
    group_label: "Stores Opening Hours"
    group_item_label: "Tuesday"
  }
  dimension: stores_opening_hours__wednesday {
    type: string
    description: "Opening hours of the store on Wednesday."
    sql: ${TABLE}.stores_opening_hours.Wednesday ;;
    group_label: "Stores Opening Hours"
    group_item_label: "Wednesday"
  }
  dimension: stores_store_id {
    type: number
    description: "Unique identifier for the store."
    sql: ${TABLE}.stores_store_id ;;
  }
  dimension: stores_store_name {
    type: string
    description: "Name of the store."
    sql: ${TABLE}.stores_store_name ;;
  }
  dimension: suppliers_address_city {
    type: string
    description: "City of the supplier's address."
    sql: ${TABLE}.suppliers_address_city ;;
  }
  dimension: suppliers_address_state {
    type: string
    description: "State of the supplier's address."
    sql: ${TABLE}.suppliers_address_state ;;
  }
  dimension: suppliers_contact_name {
    type: string
    description: "Contact name of the supplier."
    sql: ${TABLE}.suppliers_contact_name ;;
  }
  dimension: suppliers_email {
    type: string
    description: "Email address of the supplier."
    sql: ${TABLE}.suppliers_email ;;
  }
  dimension: suppliers_latitude {
    type: number
    description: "Latitude of the supplier's location."
    sql: ${TABLE}.suppliers_latitude ;;
  }
  dimension: suppliers_longitude {
    type: number
    description: "Longitude of the supplier's location."
    sql: ${TABLE}.suppliers_longitude ;;
  }
  dimension: suppliers_phone_number {
    type: string
    description: "Phone number of the supplier."
    sql: ${TABLE}.suppliers_phone_number ;;
  }
  dimension: suppliers_supplier_id {
    type: number
    description: "Unique identifier for the supplier."
    sql: ${TABLE}.suppliers_supplier_id ;;
  }
  dimension: suppliers_supplier_name {
    type: string
    description: "Name of the supplier."
    sql: ${TABLE}.suppliers_supplier_name ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
  pet_profiles_pet_name,
  stores_store_name,
  suppliers_contact_name,
  products_product_name,
  pet_profiles_nickname,
  customers_first_name,
  suppliers_supplier_name,
  customers_last_name
  ]
  }

}

view: orders_denormalized__products_nutritional_info__ingredients {

  dimension: orders_denormalized__products_nutritional_info__ingredients {
    type: string
    description: "Ingredients of the product."
    sql: orders_denormalized__products_nutritional_info__ingredients ;;
  }
}
