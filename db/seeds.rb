# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

list_ingredient = ["whisky", "martini", "gin", "ginger ale", "lemon juice", "vodka", "cognac"]
list_ingredient.each {|i| Ingredient.create(name: i)}

10.times do
  Cocktail.create(name: Faker::Name.name)
end

20.times do
  Dosage.create(mix:rand(1..4), cocktail_id: rand(1..10), ingredient_id: rand(1..list_ingredient.length))
end