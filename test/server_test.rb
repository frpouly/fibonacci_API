ENV['RACK_ENV'] = 'test'

require_relative '../app/controllers/FibonacciController'
require 'test/unit'
require 'rack/test'

set :environment, :test

class ServerTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    # retrieve class name containing Sinatra app
    Rack::Builder.parse_file("config.ru").first
  end

  def test_it_says_hello_world_root
    get '/'
    assert last_response.ok?
    assert_equal "hello world".to_json, last_response.body
  end

  def test_it_gives_thefibonacci_number
    get '/api/v1/fibonacci/12'
    assert last_response.ok?
    assert_equal 144.to_json, last_response.body
    get '/api/v1/fibonacci/19'
    assert last_response.ok?
    assert_equal 4181.to_json, last_response.body
  end
end
