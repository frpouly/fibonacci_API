require 'sinatra'

def fibonacci(num)
  first_num, second_num = [0, 1]
  (num - 1).times do
    first_num, second_num = second_num, first_num + second_num
  end
  first_num
end

before do
  content_type 'application/json'
end

get '/' do
  "hello world".to_json
end

get '/api/v1/fibonacci/:number' do
  fibonacci(Integer("#{params[:number]}")).to_json
end
