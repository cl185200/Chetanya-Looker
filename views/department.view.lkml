view: department {
  sql_table_name: [chetan_test.Department]
    ;;

  dimension_group: date_of_join {
    type: time
    description: "Employee date of joining"
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
    description: "Department of employee"
    sql: ${TABLE}.Dept_name ;;
  }

  dimension: emp_name {
    type: string
    description: "Name of employee"
    sql: ${TABLE}.Emp_name ;;
  }

  measure: count {
    type: count
    approximate_threshold: 100000
    drill_fields: [emp_name, dept_name]
  }
}
