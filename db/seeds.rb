# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Ingredient.create(name: "lemon")
# Ingredient.create(name: "ice")
# Ingredient.create(name: "mint leaves")

require "faker"

puts 'Cleaning database...'
Cocktail.destroy_all

puts 'Creating cocktails...'

Cocktail.create(name: "Lemon Drop")
Cocktail.create(name: "Pear Drop")
Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")
Dose.create(description: "ice")
Dose.create(description: "mint leaves")


# 30.times { Cocktail.create(name: Faker::Dessert.flavor) }
