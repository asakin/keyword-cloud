require 'sinatra'
require 'sinatra/reloader'

configure :development do
  set :public_folder, Proc.new { File.join(root, 'front_end/dist') }
end

get '/api/V1/index.html' do
  'Hello API'
end

# Catch all routes being passed to the angular app
get '/*' do
  erb :index
end

post '/*' do
  erb :index
end
