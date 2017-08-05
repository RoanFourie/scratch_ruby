# line = p %{  <metadate>2017-04-04T13:32:53Z</metadate>}
line = p %{    <name>20170404_153252.gpx</name>}
sec = Time.now.sec
hour = Time.now.hour + 2




puts line

# line[12..31] = p %{#{Time.now.strftime("%Y-%m-%dT%H:%M:%SZ")}}
line[10..24] = p %{#{Time.now.strftime("%Y%m%d_#{hour}%M%S")}}

puts line
