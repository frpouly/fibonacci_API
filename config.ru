# config.ru
require 'rubygems'
require 'bundler'

Bundler.require

require './server'
#\ -w -p 3000 --host 0.0.0.0 # Override default Rack port 9292

run Fibonacci_Finder