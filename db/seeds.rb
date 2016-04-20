# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# 5.times do
#   Article.create title: Faker::Book.title, body: Faker::Hipster.paragraph
# end
10.times do
  Student.create! name: Faker::Name.name, age: rand(18..35), phone_number: Faker::PhoneNumber.phone_number, email: Faker::Internet.email, class_room_id: 1
end