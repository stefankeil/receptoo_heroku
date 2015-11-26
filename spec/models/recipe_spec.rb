require 'rails_helper'

RSpec.describe Recipe, type: :model do
	rec = Recipe.new

  describe 'A Recipe Model' do
  	it 'reflects it´s own class' do
			expect(rec.class).to eql Recipe	
  	end

  	it 'has fields' do
  		rec.title 			 = "Oma´s Eintopf"
			rec.description  = "Eintopf mit Kartoffeln und Würstchen"
			rec.ingredients  = [Ingredient.new(name: "Tomate", ingredient_type: Ingredient.ingredient_types[:vegetable])]
			rec.category		 = Recipe.categories[:halal]
			rec.duration     = 20
			rec.comments		 = [Comment.new(user: "Klaus", comment_text: "Das war aber lecker.")]
			rec.rating			 = 3
			rec.creator_name = "Peter Pan"
  		expect(rec).to have_attributes(title: "Oma´s Eintopf", 
  																	 description: "Eintopf mit Kartoffeln und Würstchen",
  																	 duration: 20,
  																	 rating: 3,
  																	 creator_name: "Peter Pan",
  																	 category: "halal")

  		# we getting the index from ingredient types
  		expect(rec.ingredients[0].ingredient_type).to eql "vegetable"

  		expect(rec.comments[0].user).to eql "Klaus"
  		expect(rec.comments[0].comment_text).to eql "Das war aber lecker."

  	end

    it "have many comments" do
      r = Recipe.reflect_on_association(:comments)
      expect(r.macro).to eql :has_many
    end

    it "have many ingredients" do
      r = Recipe.reflect_on_association(:ingredients)
      expect(r.macro).to eql :has_and_belongs_to_many
    end

  end
end
