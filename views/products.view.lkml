view: products {
  sql_table_name: `cymbal_pets_lake.products` ;;
  drill_fields: [product_id]

  dimension: product_id {
    primary_key: yes
    type: number
    description: "Unique identifier for the product."
    sql: ${TABLE}.product_id ;;
  }
  dimension: average_rating {
    type: number
    description: "Average rating of the product."
    sql: ${TABLE}.average_rating ;;
  }
  dimension: brand {
    type: string
    description: "Brand of the product."
    sql: ${TABLE}.brand ;;
  }
  dimension: category {
    type: string
    description: "Category the product belongs to."
    sql: ${TABLE}.category ;;
  }
  dimension: cost {
    type: number
    description: "Cost of the product."
    sql: ${TABLE}.cost ;;
  }
  dimension: description {
    type: string
    description: "Description of the product."
    sql: ${TABLE}.description ;;
  }
  dimension: image_url {
    type: string
    description: "URL of the product image."
    sql: ${TABLE}.image_url ;;
  }
  dimension: inventory_level {
    type: number
    description: "Current inventory level of the product."
    sql: ${TABLE}.inventory_level ;;
  }
  dimension: nutritional_info__calories_per_serving {
    type: number
    description: "Number of calories per serving of the product."
    sql: ${TABLE}.nutritional_info.calories_per_serving ;;
    group_label: "Nutritional Info"
    group_item_label: "Calories per Serving"
  }
  dimension: nutritional_info__calories_per_treat {
    type: number
    description: "Number of calories per treat of the product."
    sql: ${TABLE}.nutritional_info.calories_per_treat ;;
    group_label: "Nutritional Info"
    group_item_label: "Calories per Treat"
  }
  dimension: nutritional_info__fiber_content {
    type: string
    description: "Fiber content of the product."
    sql: ${TABLE}.nutritional_info.fiber_content ;;
    group_label: "Nutritional Info"
    group_item_label: "Fiber Content"
  }
  dimension: nutritional_info__ingredients {
    hidden: yes
    sql: ${TABLE}.nutritional_info.ingredients ;;
    group_label: "Nutritional Info"
    group_item_label: "Ingredients"
  }
  dimension: nutritional_info__protein_content {
    type: string
    description: "Protein content of the product."
    sql: ${TABLE}.nutritional_info.protein_content ;;
    group_label: "Nutritional Info"
    group_item_label: "Protein Content"
  }
  dimension: nutritional_info__vitamin_c_content {
    type: string
    description: "Vitamin C content of the product."
    sql: ${TABLE}.nutritional_info.vitamin_c_content ;;
    group_label: "Nutritional Info"
    group_item_label: "Vitamin C Content"
  }
  dimension: price {
    type: number
    description: "Price of the product."
    sql: ${TABLE}.price ;;
  }
  dimension: product_name {
    type: string
    description: "Name of the product."
    sql: ${TABLE}.product_name ;;
  }
  dimension: subcategory {
    type: string
    description: "Subcategory the product belongs to."
    sql: ${TABLE}.subcategory ;;
  }
  dimension: supplier_id {
    type: number
    description: "Unique identifier for the product supplier."
    # hidden: yes
    sql: ${TABLE}.supplier_id ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	product_id,
	product_name,
	suppliers.contact_name,
	suppliers.supplier_name,
	suppliers.supplier_id,
	order_items.count
	]
  }

}

view: products__nutritional_info__ingredients {

  dimension: products__nutritional_info__ingredients {
    type: string
    description: "List of ingredients in the product."
    sql: products__nutritional_info__ingredients ;;
  }
}
