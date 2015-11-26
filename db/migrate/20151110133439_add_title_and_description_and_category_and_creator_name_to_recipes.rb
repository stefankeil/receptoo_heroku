class AddTitleAndDescriptionAndCategoryAndCreatorNameToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :title, :string
    add_column :recipes, :description, :text
    add_column :recipes, :category, :integer
    add_column :recipes, :creator_name, :string
  end
end
