class Recipe < ActiveRecord::Base

	enum category: [:mediterrean, :beverage, :halal, :indian, :chinese, :salad, :dessert, :soup, :starter, :fingerfood, :other]

	has_many :comments
	has_and_belongs_to_many :ingredients, :join_table => :ingredients_and_recipes
	accepts_nested_attributes_for :ingredients

	validates_presence_of :title, :description, :category, :creator_name
	
	# :title, :description, :duration, :rating, :difficulty, :creator_name, :category, :ingredients, :comments
	
	def self.search(search)
  	where("title LIKE ? OR description LIKE ?", "%#{search}%", "%#{search}%")
	end
end