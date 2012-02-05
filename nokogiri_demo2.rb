require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open("http://rubylearning.com/"))

# Search via XPath
puts doc.xpath("//h2[@id='slogan']").first.content

# Search via CSS3 selectors
puts doc.css("#footer p strong:first-child")[0].content
