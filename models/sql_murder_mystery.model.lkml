connection: "looker-private-demo"

# include all the views
include: "/views/**/*.view"

explore: crime_scene_report {}



explore: person {
  label: "Evidence Database"
  join: drivers_license {
    relationship: one_to_one
    type: left_outer
    sql_on: ${person.license_id} = ${drivers_license.id} ;;
  }

  join: interview {
    relationship: one_to_one
    type: left_outer
    sql_on: ${person.id} = ${interview.person_id} ;;
  }

  join: get_fit_now_member {
    relationship: one_to_one
    type: left_outer
    sql_on: ${person.id} = ${get_fit_now_member.person_id} ;;
  }
  join: get_fit_now_check_in {
    relationship: one_to_many
    type: left_outer
    sql_on: ${get_fit_now_member.id} = ${get_fit_now_check_in.membership_id} ;;
  }

  join: facebook_event_checkin {
    relationship: one_to_many
    type: left_outer
    sql_on: ${person.id} = ${facebook_event_checkin.person_id} ;;
  }

}

explore: solution {
  always_filter: {
    filters: {
      field: select_the_murderer
      value: ""
    }
  }
}
