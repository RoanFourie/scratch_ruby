# git-merge.rb
# Need a message.txt file in the directory

system("cls")

text = "nothing"
comment = "none"
array = []

File.open("message.txt", 'r') do |f|
  text = f.read
  array = text.split("$")
  comment = array[1]
end

puts "\n\n\ngit status:\n"
system("git status")

puts("Enter the branch to merge with the master:")
branch = gets.chomp

puts "\n\n\ngit add -A:\n"
system("git add -A")
puts "\n\n\ngit commit -m \"message\":\n"
system("git commit -m \"#{comment}\"")
puts "\n\n\ngit push origin branch:\n"
system("git push origin #{branch}")
puts "\n\n\ngit checkout master:\n"
system("git checkout master")
puts "\n\n\ngit merge branch:\n"
system("git merge #{branch}")
puts "\n\n\ngit status:\n"
system("git status")

puts("\n\n\nEnter to exit this window")
gets.chomp
