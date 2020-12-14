ENV['RACK_ENV'] = 'test'

require_relative '../../app/models/fibonacci_model'
require 'test/unit'
require 'rack/test'

set :environment, :test

class FibonacciModelTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    # retrieve class name containing Sinatra app
    Rack::Builder.parse_file("config.ru").first
  end

  def test_it_gives_the_correct_fibonacci_number
    assert_equal 0, FibonacciModel.new(0).result
    assert_equal 1, FibonacciModel.new(1).result
    assert_equal 1, FibonacciModel.new(2).result
    assert_equal 2, FibonacciModel.new(3).result
    assert_equal 13, FibonacciModel.new(7).result
    assert_equal 4181, FibonacciModel.new(19).result
    assert_equal 144, FibonacciModel.new(12).result
  end
end