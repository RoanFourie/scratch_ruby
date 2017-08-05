r = /
    (?:                                     # begin non-capture group
      MK                                    # match characters
      (?:1|2|3|4|5|6|7|8|9|10|19|43|46|77)  # match one of the choices
      |                                     # or
      NN                                    # match characters
      (?:1|2|3|4|5|6|7|12|13|29|77)         # match one of the choices
    )                                       # end non-capture group
    (?![^\sA-Z])                            # do not match a space or cap letter
    /x                                      # free-spacing regex def mode
