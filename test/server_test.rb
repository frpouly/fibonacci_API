ENV['RACK_ENV'] = 'test'

require_relative '../app/controllers/fibonacci_controller'
require 'test/unit'
require 'rack/test'

set :environment, :test

class ServerTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    # retrieve class name containing Sinatra app
    Rack::Builder.parse_file("config.ru").first
  end

  def test_it_gives_thefibonacci_number
    get '/api/v1/fibonacci/0'
    assert last_response.ok?
    assert_equal last_response.body, { "value" => 0 }.to_json
    get '/api/v1/fibonacci/12'
    assert last_response.ok?
    assert_equal last_response.body, { "value" => 144 }.to_json
    get '/api/v1/fibonacci/19'
    assert last_response.ok?
    assert_equal last_response.body, { "value" => 4181 }.to_json
  end

  def test_if_400_is_thrown
    get '/api/v1/fibonacci/hdks'
    assert_equal 400, last_response.status
    get '/api/v1/fibonacci/12.21'
    assert_equal 400, last_response.status
    get '/api/v1/fibonacci/12,21'
    assert_equal 400, last_response.status
    get '/api/v1/fibonacci/12cjhdks'
    assert_equal 400, last_response.status
    get '/api/v1/fibonacci/sjdh12'
    assert_equal 400, last_response.status
    get '/api/v1/fibonacci/-13274'
    assert_equal 400, last_response.status
  end
end
