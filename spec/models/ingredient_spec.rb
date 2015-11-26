require 'rails_helper'

RSpec.describe Ingredient, type: :model do

  describe 'A Ingredient model' do

    it 'reflects on its own class' do
      ing = Ingredient.new
      expect(ing.class).to eql Ingredient
    end

    it 'has fields' do
      ing = Ingredient.new(name: "Tomate", ingredient_type: Ingredient.ingredient_types[:vegetable])
      expect(ing).to have_attributes(:name => "Tomate", :ingredient_type => "vegetable")
    end

    it "belongs to many recipes" do
      i = Ingredient.reflect_on_association(:recipes)
      expect(i.macro).to eql :has_and_belongs_to_many
    end

  end
end
