view: interview {
  sql_table_name: sql_murder_mystery.interview ;;

  dimension: person_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.person_id ;;
  }

  dimension: transcript {
    type: string
    sql: ${TABLE}.transcript ;;
  }

  measure: count {
    type: count
    drill_fields: [person.address_street_name, person.name, person.id]
  }
}
