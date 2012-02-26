require 'spec_helper'

describe AppServer do
  
  include Rack::Test::Methods
  include DBUtils

  def app
    AppServer.new
  end

  describe "/" do
    When { get "/" }
    Then { last_response.status.should be 200 }
    Then { last_response.headers["Content-type"].should == "text/html;charset=utf-8" }
  end
end
