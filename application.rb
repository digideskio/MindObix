require 'sinatra'
require 'haml'
require 'sass'
require 'coffee-script'

set :haml, :format => :html5

get '/' do
  haml :index
end

get '/idropcopy' do
  haml :idropcopy
end

get '/style.css' do
  content_type 'text/css', :charset => 'utf-8'
  scss :style
end
