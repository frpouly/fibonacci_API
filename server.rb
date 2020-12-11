require 'sinatra'

get '/' do
  content_type 'application/json'
  "hello world".to_json
end