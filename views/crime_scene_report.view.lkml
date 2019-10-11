view: crime_scene_report {
  sql_table_name: sql_murder_mystery.crime_scene_report ;;

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: date {
    type: date
    datatype: yyyymmdd
    sql: ${TABLE}.date ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
