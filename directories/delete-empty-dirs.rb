# Dir['**/*'] \
#   .select{|d| File.directory? d} \
#   .select{|d| (Dir.entries(d) - %w[ . .. ]).empty?} \
#   .each {|d| Dir.rmdir d}


# Dir['**/'].reverse_each { |d| Dir.rmdir d if Dir.entries(d).size == 2 }
# Dir['c:/temp/**/'] OR Dir['**/']
result = Dir['**/'].reverse_each { |d| Dir.rmdir d if (Dir.entries(d) - %w[ . .. ]).empty? }
puts result
