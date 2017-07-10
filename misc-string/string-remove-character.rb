
input_string = "\n 'Pitch avec Laura Cobo \n
 importantes très régulièrement mais à présent \n\n\n' \n"

str1_markerstring = "'"
str2_markerstring = "'"

temp_string = input_string[/#{str1_markerstring}(.*?)#{str2_markerstring}/m, 1]

first_apo = input_string.index("'")
last_apo = input_string.rindex("'")

size = input_string.size

modified_string = temp_string.gsub(/(\n)/, "")

result = input_string[0..first_apo] + modified_string + input_string[last_apo..size]

puts result
