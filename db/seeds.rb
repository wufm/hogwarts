# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts "creating houses"
House.create(name: 'Gryffindor')
House.create(name: 'Ravenclaw')
House.create(name: 'Hufflepuff')
House.create(name: 'Slytherin')
House.create(name: 'Josheron')

#create users and addresses
puts "Creating students"
20.times do |n|
  student=Student.create!(name: Faker::Name.name)
  student.set_random_house
  student.save
end
