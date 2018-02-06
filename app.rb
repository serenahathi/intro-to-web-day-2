require "sinatra"
set :session_secret, 'super secret'

get '/' do
  "hello"
end

get '/monday' do
  "Inspiration quote!"
end

get '/random-cat' do
  @random_name = %w(Amigo Oscar Viking).sample
  erb(:index)
end

get '/named-cat' do
  @param_name = params[:name]
  erb(:index)
end
