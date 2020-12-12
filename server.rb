require 'sinatra'
require "sinatra/multi_route"

set :port, 3000
set :bin, '0.0.0.0'

def fibonacci(num)
  first_num, second_num = [0, 1]
  (num).times do
    first_num, second_num = second_num, first_num + second_num
  end
  first_num
end

class Fibonacci_Finder < Sinatra::Base
  register Sinatra::MultiRoute

  before do
    content_type 'application/json'
  end

  get '/' do
    "hello world".to_json
  end

  get '/api/v1/fibonacci/:number' do
    fibonacci(Integer("#{params[:number]}")).to_json
  end
end