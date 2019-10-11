view: person {
  sql_table_name: sql_murder_mystery.person ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: address_number {
    type: number
    sql: ${TABLE}.address_number ;;
  }

  dimension: address_street_name {
    type: string
    sql: ${TABLE}.address_street_name ;;
  }

  dimension: license_id {
    type: number
    sql: ${TABLE}.license_id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: ssn {
    type: number
    sql: ${TABLE}.ssn ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      address_street_name,
      name,
      facebook_event_checkin.count,
      get_fit_now_member.count,
      interview.count
    ]
  }
}
