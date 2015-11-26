class AddDurationAndRatingAndDifficultyToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :duration, :integer
    add_column :recipes, :rating, :integer
    add_column :recipes, :difficulty, :integer
  end
end
