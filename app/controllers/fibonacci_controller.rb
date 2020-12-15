require 'sinatra'
require_relative '../models/fibonacci_model'
require_relative '../models/inverted_fibonacci_model'

class FibonacciController < Sinatra::Base

  configure do
    set :views, "app/views"
    set :public_folder, 'public'
    @default_route = "/api/v1/"
  end

  get '/' do
    erb :index
  end

  get @default_route + "fibonacci/:number" do
    begin
      number = Integer(params[:number])
    rescue
      halt 400, "Provide a number"
    end
    if number < 0
      halt 400, "Number must be positive"
    end
    if number > 15000000
      halt 400, "Number is too big"
    end
    content_type 'application/json'
    { "value" => FibonacciModel.new(number).result.to_s }.to_json
  end

  get @default_route + "inverted_fibonacci/:number" do
    begin
      number = Integer(params[:number])
    rescue
      halt 400, "Provide a number"
    end
    if number < 0
      halt 400, "Number must be positive"
    end
    content_type 'application/json'
    { "value" => InvertedFibonacciModel.new(number).result.to_s }.to_json
  end

  error Sinatra::NotFound do
    content_type 'text/plain'
    [404, 'Not Found']
  end
end