# frozen_string_literal: true

require 'rubygems'
require 'bundler'

Bundler.require

require './app/controllers/fibonacci_controller'

run FibonacciController
