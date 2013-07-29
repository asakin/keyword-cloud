require 'sinatra'
require 'sinatra/reloader'

configure :development do
  set :public_folder, Proc.new { File.join(root, 'front_end/dist') }
end

get '/api/V1/index.html' do
  'Hello API'
end

def get_or_post(path, opts={}, &block)
  get(path, opts, &block)
  post(path, opts, &block)
end

# Catch all routes being passed to the angular app
get_or_post '/*' do
  send_file File.join(settings.public_folder, 'index.html')
end
