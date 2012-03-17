ENV['RACK_ENV'] = 'test'

$: << File.dirname(__FILE__) + "/../"

require "sinatra/base"
require "rspec"
require "rspec/given"
require "rack/test"
require "mongo"

require "server"

module DBUtils
  def drop_db
    conn = Mongo::Connection.new
    conn.drop_database("db-#{ENV['RACK_ENV']}")
  end
end
