require 'sinatra'

get '/' do
  erb :home
end

post '/display' do
  erb :show
end
