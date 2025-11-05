connection: "cymbal-pets-spotlight-demo"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: cymbal_pets_demo_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: cymbal_pets_demo_default_datagroup

