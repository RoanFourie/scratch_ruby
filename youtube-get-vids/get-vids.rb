# get-vids.rb
# Input a list of youtube videos
# Output the downloaded videos in the same directory as the script
# Need the Youtube-dl app AND the videos.txt in the same directory as the script
# videos.txt must have youtube video links one per line below each other


# get current working directory
work_dir = Dir.pwd
app_path = work_dir + '/youtube-dl'
file_name = work_dir + '/videos.txt'

# create a list of all the videos
list_of_videos = []
f = File.open(file_name) or die "Unable to open file..."
f.each_line {|line| list_of_videos << line}

# go through each item in list and download it
list_of_videos.each do |video|
  unless video[0] == "#"
    50.times {putc("*")}
    puts("\nStarted with #{video}")
    # execute the command in windows, caling youtube-dl
    system(app_path, video, "-R 3", "--write-description", "--write-info-json")
    # -R = retries
  else
    50.times {putc("*")}
    puts("\n#{video}")
  end
  sleep(3)
end
50.times { putc("*")}
puts "\ncompleted"
nothing = gets.chomp

# INFORMATION
# https://github.com/rg3/youtube-dl/blob/master/README.md#options

# You can configure youtube-dl by placing any supported command line option to
# a configuration file. On Linux and OS X, the system wide configuration file is
# located at /etc/youtube-dl.conf and the user wide configuration file at
# ~/.config/youtube-dl/config. On Windows, the user wide configuration file locations
# are %APPDATA%\youtube-dl\config.txt or C:\Users\<user name>\youtube-dl.conf.
# Note that by default configuration file may not exist so you may need to create it yourself.
#
# For example, with the following configuration file youtube-dl will always
# extract the audio, not copy the mtime, use a proxy and save all videos under
# Movies directory in your home directory:
#
# # Lines starting with # are comments
#
# # Always extract audio
# -x
#
# # Keep all files
# -k
#
# # Do not copy the mtime
# --no-mtime
#
# # Use this proxy
# --proxy 127.0.0.1:3128
#
# # Save all videos under Movies directory in your home directory
# -o ~/Movies/%(title)s.%(ext)s
# Note that options in configuration file are just the same options aka switches
# used in regular command line calls thus there must be no whitespace after - or
# --, e.g. -o or --proxy but not - o or -- proxy.
#
# You can use --ignore-config if you want to disable the configuration file for
# a particular youtube-dl run.
