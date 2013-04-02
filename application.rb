require 'sinatra'
require 'haml'
require 'compass'
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

get '/idroppwd' do
  @metaTitle = 'MindObix - iDropPwd App - Drop your passwords with confidence!'
  @metaDescr = 'DropPwd is secure, reliable, simple and inexpensive password management app to all the other ones out there. It is beautifully designed and you are going to love managing your passwords. iDropPwd is built on top of Dropbox so that you can manage your passwords on your iPhone, iPad, iPad Mini and iPod Touch. '
  @metaKeywords = 'Password, Password Management, Password Manager, Pass, iPassword, Security, Secure, Protection, Key Password, KeyPass, iSecurity, Secured Password'
  haml :idroppwd
end

get '/myvoicedrop' do
  @metaTitle = 'MindObix - myVoiceDrop App - Create Podcasts, VoiceGram & Voice Overs and edit it on your MAC/PC!'
  @metaDescr = 'myVoiceDrop turns your iPhone, iPod Touch & iPad into your personal podcast and voice gram to share with others. myVoiceDrop uses your Dropbox account to share your recording with others and also makes it easier to access your recordings from your Mac and PC for editing with other applications.'
  @metaKeywords = 'Recording, Podcasts, Voice Recording, Voice Memo, iVoice, Drop Voice, Voice Dropbox, Audio Dropbox, AudioGram, VoiceGram, Cloud Audio, Cloud Recording, Cloud Voice, iAudio'
  haml :myvoicedrop
end

get '/idropcopy/help/:platform' do
  @link = '/idropcopy/help'
  @platform = params[:platform]
  haml :'idropcopy/help/help', :locals => {:link => @link, :platform => @platform}
end

get '/idropcopy/m/help/:platform' do
  @link = '/idropcopy/m/help'
  @platform = params[:platform]
  haml :'idropcopy/help/help', {:layout => :mobilelayout}, :locals => {:link => @link, :platform => @platform}
end


get '/idropcopy/help/login/iphone' do
  @link = '/idropcopy/help'
  haml :'idropcopy/help/login/iphone', :locals => {:link => @link}
end

get '/idropcopy/m/help/login/iphone' do
  @link = '/idropcopy/m/help'

  haml :'idropcopy/help/login/iphone', {:layout => :mobilelayout}, :locals => {:link => @link}
end

get '/idropcopy/m/help/login/iphone1' do
  @link = '/idropcopy/m/help'

  haml :'idropcopy/help/login/iphone1', {:layout => :mobilelayout}, :locals => {:link => @link}
end

get '/idropcopy/help/login/ipad' do
  @link = '/idropcopy/help'
  haml :'idropcopy/help/login/ipad', :locals => {:link => @link}
end

get '/idropcopy/m/help/login/ipad' do
  @link = '/idropcopy/m/help'

  haml :'idropcopy/help/login/ipad', {:layout => :mobilelayout}, :locals => {:link => @link}
end


get '/style.css' do
  content_type 'text/css', :charset => 'utf-8'
  scss :style
end
