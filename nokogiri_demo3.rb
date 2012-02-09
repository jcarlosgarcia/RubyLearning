require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open("http://satishtalim.github.com/webruby/chapter3.html"))

puts doc.to_s.scan(/\bthe\b/).size
