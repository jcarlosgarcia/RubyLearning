class MyApp
  def call(env)
    [200, {"Content-Type" => "text/html"}, ["Command line argument you typed was: #{ARGV.first}"]]
  end
end
