# config.ru
require 'rubygems'
require 'bundler'

Bundler.require

require './app/controllers/fibonacci_controller'
#\ -w -p 3000 --host 0.0.0.0 # Override default Rack port 9292

run FibonacciController