connection: "chetanya_prakash_lahoti"

# include all the views
include: "/views/**/*.view"

datagroup: chetanyatestlooker_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: chetanyatestlooker_default_datagroup

# NOTE: please see https://looker.com/docs/r/sql/bigquery?version=22.6
# NOTE: for BigQuery specific considerations

explore: random {}

#explore: employee {}

explore: department {}

explore: empdepartement {}

explore: employee{
  join: department {
    type: inner
    sql_on: ${department.emp_name}=${employee.name};;
    relationship: one_to_one
  }
}
