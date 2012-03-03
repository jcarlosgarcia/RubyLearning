require 'sinatra'

use Rack::Auth::Basic, "Restricted Area" do |user, password|
  user == 'super' && password == 'secretsauce'
end

get '/' do
  "This is a secret page"
end

get '/files' do
   "Here are the secret files"
end
