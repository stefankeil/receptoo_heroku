class DropRecipesAndIngredients < ActiveRecord::Migration
  def change
  	drop_table :recipes_and_ingredients
  end
end
