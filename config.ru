# config.ru
require 'rubygems'
require 'bundler'

Bundler.require

require './app/controllers/fibonacci_controller'

run FibonacciController