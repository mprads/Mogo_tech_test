# Load the required gems/libraries.
require 'rubygems'
require 'bundler/setup'
require 'active_record'
require 'mysql2'
require 'yaml'

# Establish our connection to our serverless mysql database.
ActiveRecord::Base.establish_connection(YAML::load(File.open('config/database.yml')))

class Dog < ActiveRecord::Base
  has_many :bones
end

class Bone < ActiveRecord::Base
  belongs_to :dogs
end

@dogs = Dog.all
@dog_bones_data = @dogs.map do |dog|
  @ratings = dog.bones.pluck(:rating)
  @count = @ratings.length
  if @ratings.length == 0
    @average = 0
  else
    @average = @ratings.inject(0.0) { |sum, el| sum + el } / @ratings.length
  end
  @data = {'id' => dog.id, 'bones_quantity' => @count, 'average_rating' => @average}
end
puts @dog_bones_data
