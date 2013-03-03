require 'sinatra'
require 'haml'
require 'sass'
require 'coffee-script'

set :haml, :format => :html5

get '/' do
  @metaTitle = 'MindObix Productivity & Educational Apps'
  @metaDescr = 'MindObix creates beautiful productivity and educational apps for our fellow human beings to help them become more successful and happy'
  @metaKeywords = 'iOS Productivity Apps, Android Productivity Apps, iOS Educational Apps, Android Educational Apps, iPhone Education Apps, iPad Education Apps, iPhone Productivty Apps, iPad Productivity Apps, iDropCopy, ILoveMYABCs, MindObix, Mind, Aerobics'
  haml :index
end

get '/idropcopy' do
  @metaTitle = 'MindObix - iDropCopy App - Copy any text to any apple ios devices and mac computers'
  @metaDescr = 'MindObix iDropCopy App helps copy link and text from your iOS devices (iPhone, iPad & iPod) to MAC OSX (MacBook, iMac, Mac Mini)'
  @metaKeywords = 'DropCopy, iDropCopy, Drop Copy, i drop copy, dropbox copy, cloud copy, cloud clipboard, drop clipboard, copy paste cloud, copy paste sharing, clipboard sharing, dropbox idropcopy, dropbox copy paste'
  haml :idropcopy
end

get '/ilovemyabcs' do
  @metaTitle = 'MindObix - iLoveMyABCs App - New way and fun way to learn your ABCs'
  @metaDescr = 'MindObix iLoveMyABCs is a universal app that runs on iOS (iPad, iPhone and iPod) and android phones & tablets. ILoveMyABCs makes learning different types of information easy, fun and exciting for kids and parents. ILoveMyABCs provides hand picked visual images and custom audio voice overs for each word that is displayed.'
  @metaKeywords = 'ilovemyabcs, i love my abcs, abcs, learn your abcs, abcs made easy, learn alphabets, animals, fruits, presidents, abc alphabets, xyz, learning'
  haml :ilovemyabcs
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

get '/idropcopy/help/login/ipad' do
  @link = '/idropcopy/help'
  haml :'idropcopy/help/login/ipad', :locals => {:link => @link}
end

get '/idropcopy/p/help/login/ipad' do
  @link = '/idropcopy/p/help'

  haml :'idropcopy/help/login/ipad', {:layout => :plainlayout}, :locals => {:link => @link}
end


get '/style.css' do
  content_type 'text/css', :charset => 'utf-8'
  scss :style
end
