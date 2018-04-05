require 'capybara/rspec'
require 'capybara'
require 'rspec'
require 'simplecov'
require './app'

RACK_ENV='test'
Capybara.app = Battle