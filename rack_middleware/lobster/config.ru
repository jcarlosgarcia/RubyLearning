require 'rack/lobster'
require './my_middleware'
use MyMiddleware::Hello
run Rack::Lobster.new
