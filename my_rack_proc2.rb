require 'rack'
my_rack_proc = lambda { |env| [200, {"Content-type" => "text/plain"}, ["Hello. The time is #{Time.now}"]]}
Rack::Handler::WEBrick.run my_rack_proc, :Port => 9876 
