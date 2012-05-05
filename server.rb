require "rubygems"
require "sinatra/base"
require "sinatra/assetpack"
require "sinatra/backbone"
require "json"

class AppServer < Sinatra::Base
  set :root, File.dirname(__FILE__)
  register Sinatra::AssetPack
  register Sinatra::JstPages
  serve_jst '/jst.js'

  assets do
    serve '/img', from: 'app/img'

    my_js = [
      '/js/vendor/jquery.js',
      '/js/vendor/underscore.js',
      '/js/vendor/backbone.js',
      '/js/vendor/bootstrap.min.js',
      '/jst.js'
    ]

    my_js << Dir.glob("./app/js/app/**/*.coffee").each do |f| 
      f.sub!("./app", "")
      f.sub!(".coffee", ".js") 
    end

    my_js << ['/js/app.js']

    js :app, my_js

    css :application, '/css/application.css', [
      '/css/bootstrap.min.css',
      '/css/bootstrap-responsive.min.css',
      '/css/screen.css'
    ]    
  end

  get "/" do
    erb :index
  end

  get "/favicon.ico" do
    ""
  end
  
end
