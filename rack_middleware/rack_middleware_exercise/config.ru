require './middleware_exercise'
use MiddlewareExercise::MyMiddleware
run Proc.new {|env| [200, {"Content-Type" => "text/plain"}, ['OK!']] }
