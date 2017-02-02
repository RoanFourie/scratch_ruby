# Name: grabtext.rb
# By: Jason Heppler
#
# This script uses Nokogiri to grab the text only between the 'text' tag
# in XML files. Modify as you need.
# Usage: ./grabtext.rb path/to/file > output.txt

require 'rubygems'
require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open(ARGV[0]))

doc.search('text').each do |link|
    puts link.content
end
