require 'rubygems'
require 'test/unit'
require 'shoulda'
require 'rack/mock'

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'rack-forceie7'

class TestApp
  def call(env)
    [200, {}, 'Body']
  end
end

class Test::Unit::TestCase
end
