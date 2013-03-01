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

get '/idropcopy/help/:platform' do
  @link = '/idropcopy/help'
  @platform = params[:platform]
  haml :'idropcopy/help/help', :locals => {:link => @link, :platform => @platform}
end

get '/idropcopy/p/help/:platform' do
  @link = '/idropcopy/p/help'
   @platform = params[:platform]
  haml :'idropcopy/help/help', {:layout => :plainlayout}, :locals => {:link => @link, :platform => @platform}
end


get '/idropcopy/help/login/iphone' do
  @link = '/idropcopy/help'
  haml :'idropcopy/help/login/iphone', :locals => {:link => @link}
end

get '/idropcopy/p/help/login/iphone' do
  @link = '/idropcopy/p/help'
  haml :'idropcopy/help/login/iphone', {:layout => :plainlayout}, :locals => {:link => @link}
end

get '/style.css' do
  content_type 'text/css', :charset => 'utf-8'
  scss :style
end
