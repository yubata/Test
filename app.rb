require 'sinatra'
## require 'sinatra/reloader

=begin
get '/from/*/to/*' do |f,t|
   "from #{f} to #{t}"
end
=end

get %r{/users/([0-9]*)} do |i|
  "user id = #{i}"
end