view: drivers_license {
  sql_table_name: sql_murder_mystery.drivers_license ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: age {
    type: number
    sql: ${TABLE}.age ;;
  }

  dimension: car_make {
    type: string
    sql: ${TABLE}.car_make ;;
  }

  dimension: car_model {
    type: string
    sql: ${TABLE}.car_model ;;
  }

  dimension: eye_color {
    type: string
    sql: ${TABLE}.eye_color ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension: hair_color {
    type: string
    sql: ${TABLE}.hair_color ;;
  }

  dimension: height {
    type: number
    sql: ${TABLE}.height ;;
  }

  dimension: plate_number {
    type: string
    sql: ${TABLE}.plate_number ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
