# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Task.destroy_all
Category.destroy_all
Email.destroy_all

['Travail', 'Personnel', 'Administratif'].each do |current|
  Category.create(title: current)
end

10.times do
  Task.create(title: Faker::Hipster.sentences(number: 1)[0], category: Category.all.sample, deadline: Faker::Date.forward(days: 23), status: [0,1].sample)
end

10.times do
  Task.create(title: Faker::Hipster.sentences(number: 1)[0], category: Category.all.sample, deadline: Faker::Date.backward(days: 23), status: [0,1].sample)
end

10.times do 
  Email.create(object: Faker::Hipster.sentences(number: 1)[0], body: Faker::Hipster.paragraphs)
end