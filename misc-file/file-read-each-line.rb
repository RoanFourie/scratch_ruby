    web_contents = "c:\\projects\\test.txt"

    File.open(web_contents).each_with_index do |line, i|
      line.chomp!
      puts "line #{line}, i #{i}" # Do whatever you want to here
    end
