require 'sinatra'
## require 'sinatra/reloader


get '/hello/:name' do
  "hello #{params[:name]}"
end


