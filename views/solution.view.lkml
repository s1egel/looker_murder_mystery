view: solution {
  sql_table_name: sql_murder_mystery.solution ;;

  parameter: select_the_murderer {
    type: string
    suggest_explore: person
    suggest_dimension: person.name
    required_fields: [solution]
  }

  # YOU THOUGHT YOU COULD LOOK THROUGH THE LOOKML FOR THE ANSWER?! TSK, TSK
  dimension: solution {
    type: string
    sql:
        CASE WHEN CAST(FARM_FINGERPRINT({% parameter select_the_murderer %}) AS STRING) = '-6138103633487140394' THEN "Congrats, you found the murderer! But wait, there's more... If you think you're up for a challenge, try querying the interview transcript of the murderer to find the real villian behind this crime."
             WHEN CAST(FARM_FINGERPRINT({% parameter select_the_murderer %}) AS STRING) = '-9069613746346657079' THEN "Congrats, you found the brains behind the murder! Everyone in SQL City hails you as the greatest Looker detective of all time. Time to break out the champagne!"
             ELSE "That's not the right person. Try again!"
        END ;;
  }
}
