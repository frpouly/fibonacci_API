require 'sinatra'
require "sinatra/multi_route"
require_relative '../models/fibonacci_model'

set :port, 3000
set :bin, '0.0.0.0'

class FibonacciController < Sinatra::Base
  register Sinatra::MultiRoute

  @@default_route = "/api/v1/fibonacci/"

  get @@default_route + ":number" do
    begin
      number = Integer(params[:number])
    rescue
      halt 400, "Provide a number"
    end
    if number < 0
      halt 400, "Number must be positive"
    end
    if number > 100000
      halt 400, "Number too big to be computed"
    end
    content_type 'application/json'
    result = FibonacciModel.new(number).fibonacci
    { "value" => result.to_s }.to_json
  end
end