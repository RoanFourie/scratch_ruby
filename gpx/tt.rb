# alter-create-gpx.rb
# Roan Fourie
# 2017 Week 31


def new_name (time_string, day_string, ofset)
# time_string should be in format of "20170404_153252"
# day_string should be in format of "2017-08-23"
# ofset is in seconds
# made for program to modify gpx files

  #prev = Time.gm(time_string[0..3],time_string[4..5],time_string[6..7],time_string[9..10],time_string[11..12],time_string[13..14])

  t_h = time_string[9..10].to_i
  t_m = time_string[11..12].to_i
  t_s = time_string[13..14].to_i

  prev = (t_s + (t_h*60*60) + (t_m*60))
  ofset1 = prev - ofset

  tn_h = (Time.at(ofset1).hour - 2).strftime("%H")
  tn_m = Time.at(ofset1).min
  tn_s = Time.at(ofset1).sec

  new_string = "0123456789ABCDE"
  new_string[0..7] = p %{#{day_string[0..3]}#{day_string[5..6]}#{day_string[8..9]}}
  puts new_string[0..7]
  new_string[8] = "_"
  new_string[9..10] = tn_h.to_s
  new_string[11..12] = tn_m.to_s
  new_string[13..14] = tn_s.to_s

  return new_string

end

def new_time (time_string, day_string, ofset)
# time_string should be in format of "2017-04-04T13:32:53Z"
# day_string should be in format of "2017-08-23"
# ofset is in seconds
# made for program to modify gpx files

  #prev = Time.gm(time_string[0..3],time_string[5..6],time_string[8..9],time_string[11..12],time_string[14..15],time_string[17..18])

  t_h = time_string[11..12].to_i
  t_m = time_string[14..15].to_i
  t_s = time_string[17..18].to_i

  prev = (t_s + (t_h*60*60) + (t_m*60))
  ofset1 = prev - ofset

  tn_h = Time.at(ofset1).hour - 2   # 7200
  tn_m = Time.at(ofset1).min
  tn_s = Time.at(ofset1).sec

  new_string = time_string
  new_string[0..9] = day_string
  new_string[11..12] = tn_h.to_s
  new_string[14..15] = tn_m.to_s
  new_string[17..18] = tn_s.to_s

  return new_string

end

r_seconds = rand(-900..900)

puts new_name("2017-04-04T13:32:53Z","2017-05-05", r_seconds)
puts new_time("2017-04-04T13:32:53Z","2017-05-05", r_seconds)
