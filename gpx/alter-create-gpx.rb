file_out_name = p %{#{Time.now.strftime("%Y%m%d_%H%M%S")}.gpx}
file_in_name = "template_#{rand(1..4)}.gpx"
sec = Time.now.sec
hour = Time.now.hour + 2


File.foreach(file_in_name).with_index do |line, line_num|
  line.chomp!
  next if line.empty?
  # Do stuff with each line
  case line
  when /<metadate>/
    line[12..31] = p %{#{Time.now.strftime("%Y-%m-%dT%H:%M:%SZ")}}
  when /<name>/
    line[10..24] = p %{#{Time.now.strftime("%Y%m%d_#{hour}%M%SZ")}}
  data << p %{#{line}\n}
end

File.open(file_out_name, 'w') { |f| f.write(data) }
