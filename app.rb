require 'rubygems'
require 'compass' #must be loaded before sinatra
require 'sinatra'
require 'haml'    #must be loaded after sinatra
require "zurb-foundation"



class App < Sinatra::Base
  # set sinatra's variables
  set :haml, :format => :html5
  set :app_file, __FILE__
  set :root, File.dirname(__FILE__)
  set :views, "views"
  set :public, 'static'
  
  configure do
    Compass.add_project_configuration(File.join(Sinatra::Application.root, 'config', 'compass.config'))
  end

  # at a minimum, the main sass file must reside within the ./views directory. here, we create a ./views/stylesheets directory where all of the sass files can safely reside.
  get '/stylesheets/:name.css' do
    content_type 'text/css', :charset => 'utf-8'
    sass(:"stylesheets/#{params[:name]}", Compass.sass_engine_options )
    scss(:"stylesheets/#{params[:name]}", Compass.scss_engine_options )
  end
  
  get '/' do
    @metaTitle = 'MindObix - Creates Beautiful and Simple Productivity & Educational Apps'
    @metaDescr = 'MindObix creates beautiful productivity and educational apps for our fellow human beings to help them become more successful and happy'
    @metaKeywords = 'iOS Productivity Apps, Android Productivity Apps, iOS Educational Apps, Android Educational Apps, iPhone Education Apps, iPad Education Apps, iPhone Productivty Apps, iPad Productivity Apps, iDropPwd, myVoiceDrop, iDropCopy, ILoveMYABCs, MindObix, Mind, Aerobics, Audio Podcast, AudioGram, VoiceGram, Dropbox Password, Password Management, Security Password, Password Keeper, Voice Memos'
    haml :index
  end
  
  get %r{^/idropcopy/?$}i do
		@metaTitle = 'iDropCopy - Don\'t just copy!'
		@metaDescr = 'iDropCopy App helps copy link and text from your iOS devices (iPhone, iPad & iPod) to MAC OSX (MacBook, iMac, Mac Mini)'
		@metaKeywords = 'DropCopy, iDropCopy, Drop Copy, i drop copy, dropbox copy, cloud copy, cloud clipboard, drop clipboard, copy paste cloud, copy paste sharing, clipboard sharing, dropbox idropcopy, dropbox copy paste'
    haml :idropcopy
	end
	
	get %r{^/ilovemyabcs/?$}i do
  	@metaTitle = 'iLoveMyABCs - New and amazing way to learn your ABCs with your family'
  	@metaDescr = 'iLoveMyABCs is a universal app that runs on iOS (iPad, iPhone and iPod) and android phones & tablets. ILoveMyABCs makes learning different types of information easy, fun and exciting for kids and parents. ILoveMyABCs provides hand picked visual images and custom audio voice overs for each word that is displayed.'
  	@metaKeywords = 'ilovemyabcs, i love my abcs, abcs, abc, learn your abcs, abcs made easy, learn alphabets, animals, fruits, presidents, abc alphabets, xyz, learning, xyz, xyzs, alphabets, alphabeticaly'
  	haml :ilovemyabcs
	end
	
	get %r{^/idroppwd/?$}i do
  	@metaTitle = 'iDropPwd - Drop your passwords with confidence!'
  	@metaDescr = 'iDropPwd provides secure, always backed up and cloud ready to manage your passwords using iOS devices'
  	@metaKeywords = 'iDropPwd, Drop Password, Password, Password Management, Password Manager, Pass, iPassword'
  	haml :idroppwd
	end
	
	get %r{^/myvoicedrop/?$}i do
  	@metaTitle = 'myVoiceDrop - Share your voice!'
  	@metaDescr = 'myVoiceDrop turns your iPhone, iPod Touch & iPad into your personal podcast and voice gram to share with others.'
  	@metaKeywords = 'Recording, Podcasts, Voice Recording, Voice Memo, iVoice, Drop Voice, Voice Dropbox, Audio Dropbox'
  	haml :myvoicedrop
	end
	
	get %r{^/idropcopy/help?$}i do
  	@metaTitle = 'iDropCopy Help'
  	@metaDescr = 'iDropCopy Help'
  	@metaKeywords = 'iDropCopy Help, iDropCopy Support, iDropCopy MAC OSX Help, iDrop Copy iOS help, i drop copy, dropbox copy, cloud copy, cloud clipboard, drop clipboard, copy paste cloud, copy paste sharing, clipboard sharing, dropbox idropcopy, dropbox copy paste'
  	haml :'idropcopy/help'
	end

	get %r{^/idropcopy/help/mac?$}i do
  	@metaTitle = 'iDropCopy Help'
  	@metaDescr = 'iDropCopy Help'
  	@metaKeywords = 'iDropCopy Help, iDropCopy Support, iDropCopy MAC OSX Help, iDrop Copy iOS help, i drop copy, dropbox copy, cloud copy, cloud clipboard, drop clipboard, copy paste cloud, copy paste sharing, clipboard sharing, dropbox idropcopy, dropbox copy paste'
  	haml :'idropcopy/help'
	end
	
	get '/idropcopy/m/help/:name' do
  	@metaTitle = 'iDropCopy Help'
  	@metaDescr = 'iDropCopy Help'
  	@metaKeywords = 'iDropCopy Help, iDropCopy Support, iDropCopy MAC OSX Help, iDrop Copy iOS help, i drop copy, dropbox copy, cloud copy, cloud clipboard, drop clipboard, copy paste cloud, copy paste sharing, clipboard sharing, dropbox idropcopy, dropbox copy paste'
  	haml :'idropcopy/help', {:layout => :'layout-help'}
	end
	
end