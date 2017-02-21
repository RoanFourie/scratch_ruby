# A program to clean up a video.txt list
# The video.txt list contains youtube video links.
# The script will remove the links that was previously downloaded so that it only include the outstanding videos
# The lines can contain one of the following formated strings: (rest will be ignored and deleted)
#   https://www.youtube.com/watch?v=gnizXEUupsA
#   gnizXEUupsA
#   https://www.youtube.com/watch?v=gnizXEUupsA&list=PL23ZvcdS3XPJZDL1M-kxoPF06cl9hfVB_&index=13
# A # in front of the text will be deleted
require 'date'
require 'fileutils'

# Change working directory into the videos directory
Dir.chdir "C:\\Users\\Roan\\Videos"

# files_list >> Get a list of all the filenames in all sub directories of the current directory
# Only look for certain video files
remove_from_list = Dir.glob('**/*.{mkv,mp4,flv,webm}')
files_to_move = Dir.glob('*.{mkv,mp4,flv,webm,m4a,description,json}')
ignore_lines = ["#"," "]
video_id_list = []
new_list = ""
this_day = Date.today
td = this_day.strftime("%Y-%m-%d")
directory_name = "C:\\Users\\Roan\\Videos\\unsorted\\#{td}"
puts directory_name
Dir.mkdir(directory_name) unless File.exists?(directory_name)

# video_list >> Get a list of all the videos from the videos.txt file
f = File.open("C:\\projects\\scratch_ruby\\youtube-get-vids\\videos.txt", "r")

# Parse the video ID out of the video link
f.each_line do |line|
  line.chomp!
  # if line starts with # then next
  # if line starts with a space then next
  # if line is empty then next
  next if line.empty? || ignore_lines.any? { |a| line =~ /#{a}/ }
  if line.length == 11
    video_id_list << line
  end
  # if "https://www.youtube.com/watch?v=" is in line then video << line[32..43]
  if line.include? 'https://www.youtube.com/watch?v='
    video_id_list << line[32..43]
  end
end
f.close


# Check if the item in video_list matches a string in the items in files_list
files_to_move.each do |a_file|
  video_id_list.each do |video_id|
    # puts "video_id: #{video_id}"
    if a_file =~ /#{video_id}/
      # move all files in current directory except txt and exe files to unsorted_<date> folder
      # FileUtils.mv(a_file, directory_name + a_file)
      puts "found one!"
    else
      # video not downloaded yet
      new_list << video_id + "\n" unless new_list.include? video_id
    end
  end
end

# Update list
remove_from_list.each do |a_file|
  video_id_list.each do |video_id|
    # puts "video_id: #{video_id}"
    if a_file =~ /#{video_id}/
      # move all files in current directory except txt and exe files to unsorted_<date> folder
      # FileUtils.mv(a_file, directory_name + a_file)
      puts "found one!"
    else
      # video not downloaded yet
      new_list << video_id + "\n" unless new_list.include? video_id
    end
  end
end

# write a new video list
Dir.chdir "C:\\projects\\scratch_ruby\\youtube-get-vids"
file = File.open("videos #{td}.txt", "w")
file.write(new_list)
file.close unless file.nil?

## Notes:

# Dir['**/*']
# Dir.glob('**/*')
# Note : the list above contains folder names but not hidden files. This will give also hidden files and folders :

# require 'find'
# Find.find('.') { |f| puts f }
# Note : symbolic links included but not followed.

# Search for specific extensions :
# Dir['**/*.{jpg,JPG}']
# Dir.glob('**/*.{jpg,JPG}')
