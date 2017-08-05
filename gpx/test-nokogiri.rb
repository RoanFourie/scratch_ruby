require 'rubygems'
require 'nokogiri'

doc = File.open("template_1.gpx") { |f| Nokogiri::XML(f) }
trackpoints = doc.xpath('//xmlns:trkpt')
timepoints = doc.xpath('//xmlns:time')




points = Array.new
trackpoints.each do |trkpt|
  points << [trkpt.xpath('@lat').to_s.to_f, trkpt.xpath('@lon').to_s.to_f]
end

puts points




points2 = ""
timepoints.each do |tt|
  points2 << tt << "\n"
end

puts points2

