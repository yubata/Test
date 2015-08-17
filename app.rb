require 'sinatra'
require 'sinatra/reloader'

before '/admin/*' do
  @msg = "admin area!"
end

before do
  @author = "taguchi"
end

after do
  logger.info "page displayed successfully"
end

helpers do
  def strong(s)
    "<strong>#{s}</strong>"
  end
end

get '/' do
  @title = "main"
  @content = "main content by " + @author
  erb :index
end

get '/about' do
  @title = "about this page"
  @content = "this page is ... by " + strong(@author)
  @email = "taguchi@email.com"
  erb :about
end

  get'/admin/' do
  @title = "about this page"
  @content = "this page is ... by " + strong(@msg)
  @email = "taguchi@email.com"
  erb :about
end