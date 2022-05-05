access_grant: can_not_view_data  {
  user_attribute: chetanattribute
  allowed_values: [ "demotest"]
}

view: random {
  sql_table_name: [chetan_test.Random]
    ;;

  required_access_grants: [can_not_view_data]

  dimension: first_name {
    type: string
    sql: ${TABLE}.FirstName ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.LastName ;;
  }

  dimension: person_id {
    type: number
    sql: ${TABLE}.PersonID ;;
  }

  measure: count {
    type: count
    approximate_threshold: 100000
    drill_fields: [first_name, last_name]
  }
}
