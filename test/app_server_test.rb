ENV['RACK_ENV'] = 'test'

$: << File.dirname(__FILE__) + "/../lib"

require "minitest/autorun"
require "rack/test"
require "mongo"

require "server"

module DBUtils
  def drop_db
    conn = Mongo::Connection.new
    conn.drop_database("db-#{ENV['RACK_ENV']}")
  end
end

describe AppServer do

end
