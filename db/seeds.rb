# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts("Creating User")
puts("=================")
 10.times do |time|
    User.create(name: Faker::Name.name ,  email:Faker::Internet.email )
 end

 puts("Creating Product")
 puts("=================")
 20.times do
     Product.create(
         title: Faker::Commerce.product_name,
         description:  Faker::Lorem.sentence,
         deadline: Faker::Date.backward(14),
         user_id: Faker::Number.between(1, 10)
         )
  end

  puts("Creating Bid")
  puts("=================")
  20.times do
    Bid.create(amount: Faker::Number.between(1, 100),
      user_id: Faker::Number.between(1, 5),
      product_id: Faker::Number.between(1, 5)
      )
  end



puts(" => Projects created √")
