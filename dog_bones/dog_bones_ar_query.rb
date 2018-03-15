# Load the required gems/libraries.
require 'rubygems'
require 'bundler/setup'
require 'active_record'
require 'mysql2'
require 'yaml'

require './models/bone'
require './models/dog.rb'

# Establish our connection to our serverless mysql database.
ActiveRecord::Base.establish_connection(YAML::load(File.open('config/database.yml')))

puts Dog.all_dogs_bones_and_rating