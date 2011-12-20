require "rubygems"
require "sinatra/base"
require "barista"
require "json"

class AppServer < Sinatra::Base
  register Barista::Integration::Sinatra

  set :root, File.dirname(__FILE__) + "/../"  

  get "/" do
    send_file "public/index.html", :type => 'text/html', :disposition => 'inline'
  end

  get "/favicon.ico" do
    ""
  end
  
end
