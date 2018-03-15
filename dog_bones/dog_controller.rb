# Load the required gems/libraries.
require 'rubygems'
require 'bundler/setup'
require 'active_record'
require 'mysql2'
require 'yaml'

require './models/bone'
require './models/dog'
require './services/get_bones_and_rating'

# Establish our connection to our serverless mysql database.
ActiveRecord::Base.establish_connection(YAML::load(File.open('config/database.yml')))

class DogController
  def show
    dogs = Dog.all
    dogs.map do |dog|
      get_bones_and_rating(dog)
    end
  end
end

puts DogController.new.show