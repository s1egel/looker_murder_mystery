view: facebook_event_checkin {
  sql_table_name: sql_murder_mystery.facebook_event_checkin ;;

  dimension: primary_key {
    primary_key: yes
    type: string
    sql: GENERATE_UUID() ;;
  }

  dimension_group: date {
    label: "Date"
    type: time
    datatype: yyyymmdd
    timeframes: [raw, date, month]
    sql: ${TABLE}.date ;;
  }

  dimension: event_id {
    type: number
    sql: ${TABLE}.event_id ;;
  }

  dimension: event_name {
    type: string
    sql: ${TABLE}.event_name ;;
  }

  dimension: person_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.person_id ;;
  }

  measure: count {
    type: count
    drill_fields: [event_name, person.address_street_name, person.name, person.id]
  }
}
