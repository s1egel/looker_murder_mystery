view: income {
  sql_table_name: sql_murder_mystery.income ;;

  dimension: annual_income {
    type: number
    sql: ${TABLE}.annual_income ;;
  }

  dimension: ssn {
    type: number
    sql: ${TABLE}.ssn ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
