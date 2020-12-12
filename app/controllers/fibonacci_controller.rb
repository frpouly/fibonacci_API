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

class FibonacciController < Sinatra::Base
  register Sinatra::MultiRoute

  @@default_route = "/api/v1/fibonacci/"

  before do
    content_type 'application/json'
  end

  get @@default_route + ":number" do
    fibonacci(Integer("#{params[:number]}")).to_json
  end
end