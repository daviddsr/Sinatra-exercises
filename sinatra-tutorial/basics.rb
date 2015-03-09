require 'sinatra'

get '/'  do
	"Hello World!"
end

get '/about' do
	"A little about me"
end

get '/hello/:name/:city' do
	name = params[:name]
	city = params[:city]
	"Hello #{name} from #{city}"
end

get '/more/*' do
	params[:splat]
end

get '/form' do
	erb :form
end

post '/form' do
	"You said '#{params[:message]}'"
end

get '/secrets' do
	erb :secrets
end

post '/secrets' do
	params[:secret].reverse
end

get '/decrypt/:secret' do
	params[:secret].reverse
end

not_found do
	status 404
	'not found'
end