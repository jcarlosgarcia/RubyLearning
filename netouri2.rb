require 'open-uri'

f = open('http://satishtalim.github.com/webruby/chapter3.html')
puts f.readlines.join.scan(/\bthe\b/).length
