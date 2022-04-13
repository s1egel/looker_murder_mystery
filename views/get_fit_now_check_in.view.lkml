view: get_fit_now_check_in {
  sql_table_name: sql_murder_mystery.get_fit_now_check_in ;;

  dimension: check_in_date {
    type: date
    datatype: yyyymmdd
    sql: ${TABLE}.check_in_date ;;
  }

  dimension: check_in_time {
    type: number
    sql: ${TABLE}.check_in_time ;;
  }

  dimension: check_out_time {
    type: number
    sql: ${TABLE}.check_out_time ;;
  }

  dimension: membership_id {
    type: string
    sql: ${TABLE}.membership_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
