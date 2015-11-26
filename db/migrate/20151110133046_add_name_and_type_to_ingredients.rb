class AddNameAndTypeToIngredients < ActiveRecord::Migration
  def change
    add_column :ingredients, :name, :string
    add_column :ingredients, :type, :integer
  end
end
