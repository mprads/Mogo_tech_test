# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Spot = Dog.create(name: 'Spot', age: '6')
Frankie = Dog.create(name: 'Frankie', age: '7')
Arwen = Dog.create(name: 'Arwen', age: '2')
Sully = Dog.create(name: 'Sully', age: '5')
Bailey = Dog.create(name: 'Bailey', age: '10')

Frankie.bones.create(animal_type: 1, rating: 6)
Frankie.bones.create(animal_type: 1, rating: 8)

Arwen.bones.create(animal_type: 1, rating: 1)
Arwen.bones.create(animal_type: 1, rating: 9)
Arwen.bones.create(animal_type: 1, rating: 7)

Sully.bones.create(animal_type: 1, rating: 4)