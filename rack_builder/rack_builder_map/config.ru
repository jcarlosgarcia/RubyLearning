require 'logger'
rack_app = Rack::Builder.new do
  use Rack::CommonLogger
  Logger.new('rack.log')

  map "/" do
    run Proc.new {|env| [200, {"Content-Type" => "text/html"}, ["This is a public page"]]}
  end

  map "/secret" do
    use Rack::Auth::Basic, "Restricted Area" do |user, password|
      user == 'super' && password == 'secretsauce'
    end

    map "/" do
      run Proc.new {|env| [200, {"Content-Type" => "text/html"}, ["This is a secret page"]]}
    end

    map "/files" do
      run Proc.new {|env| [200, {"Content-Type" => "text/html"}, ["Here are the secret files"]]}
    end
  end
end
Rack::Handler::WEBrick.run rack_app, :Port => 9292
