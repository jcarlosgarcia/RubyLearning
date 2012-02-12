require 'rack'

simple_rack = lambda { |env| [200, {"Content-Type" => "text/plain"}, ["Command line argument you typed was: #{ARGV.first}"]] }
Rack::Handler::WEBrick.run simple_rack, :Port => 8850
