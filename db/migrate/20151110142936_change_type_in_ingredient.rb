class ChangeTypeInIngredient < ActiveRecord::Migration
  def change 
  	remove_column :ingredients, :type
  	add_column :ingredients, :ingredient_type, :integer
  end
end
