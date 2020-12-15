ENV['RACK_ENV'] = 'test'

require_relative '../../app/models/huge_integer'
require 'test/unit'
require 'rack/test'

set :environment, :test

class HugeIntegerTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    # retrieve class name containing Sinatra app
    Rack::Builder.parse_file("config.ru").first
  end

  def test_it_creates_huge_number_from_integer
    assert_equal "0", HugeInteger.new(0).to_s
    assert_equal "91247836487346582376358758", HugeInteger.new(91247836487346582376358758).to_s
  end

  def test_to_copy_2_huge_integers
    huge = HugeInteger.new(91247836487346582376358758)
    assert_equal huge.to_s, HugeInteger.new(huge.value).to_s
  end

  def test_addition
    huge = HugeInteger.new(984738784378437477647838) + HugeInteger.new(982389478327657829878287)
    assert_equal "1967128262706095307526125", huge.to_s
  end
end