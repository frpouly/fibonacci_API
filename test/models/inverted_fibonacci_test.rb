ENV['RACK_ENV'] = 'test'

require_relative '../../app/models/fibonacci_model'
require_relative '../../app/models/inverted_fibonacci_model'
require 'test/unit'
require 'rack/test'

set :environment, :test

class FibonacciModelTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    # retrieve class name containing Sinatra app
    Rack::Builder.parse_file('config.ru').first
  end

  def test_it_gives_the_correct_inverted_fibonacci_number
    assert_equal 0, InvertedFibonacciModel.new(0).result
    assert_equal 2, InvertedFibonacciModel.new(1).result
    assert_equal 3, InvertedFibonacciModel.new(2).result
    assert_equal 7, InvertedFibonacciModel.new(13).result
    assert_equal 19, InvertedFibonacciModel.new(4181).result
    assert_equal 12, InvertedFibonacciModel.new(144).result
  end

  def test_inverted_with_fibonacci
    assert_equal 45, InvertedFibonacciModel.new(FibonacciModel.new(45).result).result
    assert_equal 144, FibonacciModel.new(InvertedFibonacciModel.new(144).result).result
  end
end
