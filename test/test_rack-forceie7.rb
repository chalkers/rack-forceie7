require 'helper'

class TestRackForceie7 < Test::Unit::TestCase
  should "have new header added and the body not modified" do
    request  = Rack::MockRequest.new(Rack::ForceIE7.new(TestApp.new))
    response = request.get('/')
    assert_equal "IE=7", response.headers["X-UA-Compatible"]    
    assert_equal "Body", response.body
  end
end
