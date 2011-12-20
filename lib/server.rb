require "rubygems"
require "sinatra/base"
require "barista"
require "json"

class AppServer < Sinatra::Base
  register Barista::Integration::Sinatra

  get "/" do
    send_file "public/index.html", :type => 'text/html', :disposition => 'inline'
  end
end
