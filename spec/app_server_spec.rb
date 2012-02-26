ENV['RACK_ENV'] = 'test'

$: << File.dirname(__FILE__) + "/../lib"

require "sinatra/base"
require "minitest/autorun"
require "rack/test"
require "mongo"

require "server"

Barista.logger.level = Logger::WARN

module DBUtils
  def drop_db
    conn = Mongo::Connection.new
    conn.drop_database("db-#{ENV['RACK_ENV']}")
  end
end

describe AppServer do
  
  include Rack::Test::Methods
  include DBUtils

  def app
    AppServer.new
  end

  describe "/" do
    before do
      get "/"
    end

    it "should respond with success" do
      assert_equal 200, last_response.status
    end

    it "should emit an HTML header" do
      assert_equal "text/html;charset=utf-8", last_response.headers["Content-type"]
    end
  end
end
