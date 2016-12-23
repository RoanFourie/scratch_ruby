=begin
    Windows Command Line Interface
    working with windows comands (cmd) in Ruby
    http://stackoverflow.com/questions/5531498/how-to-execute-windows-cli-commands-in-ruby
    http://stackoverflow.com/questions/2232/calling-shell-commands-from-ruby
    system('calc','') will open up the calculator...
    exec("echo 'hi'")
=end
class MyWindows

  def calc
    system('calc','')
  end
  def notepad
    system('notepad','New-Text-doc.txt')
  end
end

run = MyWindows.new

puts "Please select:"
puts "1 = Calculator"
puts "2 = notepad"
puts "3 = A hello message"
option = gets.chomp

case option
when "1"
  run.calc
when "2"
  run.notepad
when "3"
  exec("echo 'Hello there...'")
else
  puts "The option could not be found!"
end
exec("echo 'hi'")
