
Things you may want to cover before you run the app:

## Ruby version

	ruby 2.2.3p173
	rails 4.2.4

## System dependencies

	`bundle install`

## Configuration

## Database creation

## Database initialization

	`rake db:migrate`

also after new migrations were added to the repo
default enviroment is development

## populate the db with testdata

	`rake db:seed`

## How to run the test suite
run all tests:
    `bundle exec rspec`

run specific tests
	`bundle exec rspec spec/path_to_folder_or_testfile`

# receptoo
Web application project (HTW Berlin)

*by Stefan, Josh & Konrad*

## Description
This little project is all about a place where people can find, share and discuss their favorite recipes.
Our app will have four main features. The first one will be a general list of recipe suggestions and recommandations. Just browse around and see what catches your eye.

The second feature will be a search function for specific recipes, where you can either type in a recipe name in a text field or search for common keywords like ingredients. After the initial search you will be able to filter the search results for certain categories e.g. „vegetarian“. You can sort the recipes by user rating, difficulty or duration of preparation.

Our third main feature will be that users can submit their own favorite recipes to share them with everyone else. You will be presented a form where you need to enter and set all the information about your recipe. And because pictures say more than words, you can also uploaded a picture of the complete meal. However the picture upload will be optional. The last feature is quite simple but very important nevertheless. After you tried a particular recipe we highly suggest to rate it and leave a comment to let other users know how you liked it. This step will be very important to users, since it will make it easier for them to find good recipes.

## Features
1. General database for recipes
2. Submitting recipes, having
  - Title
  - Description
  - Ingredients as tags
  - Difficulty
  - Category
  - Duration
3. Searching for recipes by
  - Keywords
  - Ingredients
  - Duration
  - Difficulty
  - Rating
  - Category
4. Rating and commentating other recipes