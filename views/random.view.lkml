view: random {
  sql_table_name: [chetan_test.Random]
    ;;

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
