view: get_fit_now_member {
  sql_table_name: sql_murder_mystery.get_fit_now_member ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: membership_start_date {
    type: date
    datatype: yyyymmdd
    sql: ${TABLE}.membership_start_date ;;
  }

  dimension: membership_status {
    type: string
    sql: ${TABLE}.membership_status ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: person_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.person_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, person.address_street_name, person.name, person.id]
  }
}
