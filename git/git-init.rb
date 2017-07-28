# git-init.rb

puts("Enter the project name on the remote repo: ")
repo_name = gets.chomp

system("git init")
system("git remote add origin https://github.com/RoanFourie/#{repo_name}.git")
system("git remote add lab https://gitlab.com/RoanFourie/#{repo_name}.git")

puts("\n\n\nEnter to exit this window")
gets.chomp
