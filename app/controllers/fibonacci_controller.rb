# frozen_string_literal: true

require 'sinatra'
require_relative '../models/fibonacci_model'
require_relative '../models/inverted_fibonacci_model'

# Gets the route, send to the appropriate model or view and handles the return
class FibonacciController < Sinatra::Base
  configure do
    set :views, 'app/views'
    set :public_folder, 'public'
    @default_route = '/api/v1/'
  end

  get '/' do
    erb :index
  end

  get @default_route + 'fibonacci/:number' do
    begin
      number = Integer(params[:number])
    rescue ArgumentError
      halt 400, 'Provide a number'
    end
    halt 400, 'Number must be positive' if number.negative?
    halt 400, 'Number is too big' if number > 15_000_000
    content_type 'application/json'
    { 'value' => FibonacciModel.new(number).result.to_s }.to_json
  end

  get @default_route + 'inverted_fibonacci/:number' do
    begin
      number = Integer(params[:number])
    rescue ArgumentError
      halt 400, 'Provide a number'
    end
    halt 400, 'Number must be positive' if number.negative?
    content_type 'application/json'
    { 'value' => InvertedFibonacciModel.new(number).result.to_s }.to_json
  end

  error Sinatra::NotFound do
    content_type 'text/plain'
    [404, 'Not Found']
  end
end
