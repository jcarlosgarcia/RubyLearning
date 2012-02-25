rack_time = Proc.new { |env| [200, {"Content-Type" => "text/plain"}, ["Hello. The time is #{Time.now}"]]}
Rack::Handler::WEBrick.run rack_time, :Port => 9292
