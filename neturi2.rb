require 'net/http'

uri = URI('http://satishtalim.github.com/webruby/chapter3.html')
res = Net::HTTP.get_response(uri)
puts res.code	# => '200'
puts res.message # => 'OK'

puts Net::HTTP.get(uri).scan(/\bthe\b/).size

