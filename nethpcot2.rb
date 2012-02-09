require 'open-uri'
require 'hpricot'

page = Hpricot(open('http://satishtalim.github.com/webruby/chapter3.html'))
puts page.to_s.scan(/\bthe\b/).length
