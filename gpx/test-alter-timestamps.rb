
# *****************************************************************************
# Subtracting time
# *****************************************************************************

t1 = Time.gm("2017","04","04","13","32","53")
t2 = Time.gm("2017","04","04","09","43","13")

t3 = t1 - t2

puts t3, Time.at(t3).hour, Time.at(t3).min, Time.at(t3).sec, Time.at(t3)



# *****************************************************************************
# Modify GPX time strings with ofset
# *****************************************************************************

t4 = rand(-900..900)
#t4 = -900

puts "minutes and seconds to add:", (Time.at(t4).strftime "%M:%S")

puts "calculating for -> 2017-04-04T13:32:53Z \n"
tstr = "2017-04-04T13:32:53Z"

t_h = tstr[11..12].to_i
t_m = tstr[14..15].to_i
t_s = tstr[17..18].to_i

prev = (t_s + (t_h*60*60) + (t_m*60))
#seconds = 0
seconds = prev - t4

#puts Time.at(seconds), (Time.at(seconds).strftime "%H:%M:%S")
#puts "now ", Time.at(seconds).hour, Time.at(seconds).min, Time.at(seconds).sec

tn_h = Time.at(seconds).hour - 2   # 7200
tn_m = Time.at(seconds).min
tn_s = Time.at(seconds).sec

puts "final calculated time: \n"
puts tn_h, tn_m, tn_s
