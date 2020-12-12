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
    content_type 'application/json'
    { "value" => FibonacciModel.new(number).fibonacci }.to_json
  end
end