# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#clean up the database before seeding
Ingredient.delete_all
Comment.delete_all
Recipe.delete_all

ingredients = Ingredient.create([{name: 'Tomato', ingredient_type: 1}, {name: 'Chicken', ingredient_type: 0}])
comments    = Comment.create([{user: 'Thomas', comment_text: "This was awesome"}, {user: "Kerstin", comment_text: "Really tasty"}])
Recipe.create!(title: "Tomato Chicken Whatever", description: "Cook erverthing well", duration: 20, difficulty: 3, rating: 2, creator_name: "Paul", category: 0, ingredients: [ingredients.first, ingredients.second], comments: [comments.first, comments.second])	