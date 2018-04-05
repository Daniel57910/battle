require 'capybara/rspec'
require 'capybara'
require 'rspec'
require 'simplecov'
require './app'
require_relative './features/web_helper'
RACK_ENV='test'
Capybara.app = Battle