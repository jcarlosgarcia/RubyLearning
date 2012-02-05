require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open("http://rubylearning.com/"))

puts doc
