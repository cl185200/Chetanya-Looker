view: empdepartement {
  sql_table_name: [chetan_test.Empdepartement]
    ;;

  dimension_group: date_of_join {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    datatype: datetime
    sql: ${TABLE}.Date_of_join ;;
    fanout_on: "Date_of_join"
  }

  dimension: dept_name {
    type: string
    sql: ${TABLE}.dept_name ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  measure: count {
    type: count
    approximate_threshold: 100000
    drill_fields: [name, dept_name]
  }
}
