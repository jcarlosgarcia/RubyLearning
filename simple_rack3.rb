require 'rack'

def simple_rack(env)
	[200, {"Content-Type" => "text/plain"}, ["Command line argument you typed was: #{ARGV.first}"]]
end

Rack::Handler::Thin.run method(:simple_rack), :Port => 8850
