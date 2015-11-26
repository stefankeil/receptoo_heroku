class CreateRecipesAndIngredients < ActiveRecord::Migration
  def change
    create_table :recipes_and_ingredients do |t|
    	t.belongs_to :recipe, index: true
      t.belongs_to :ingredient, index: true
    end
  end
end
