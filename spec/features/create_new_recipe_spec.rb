require 'rails_helper'
require 'spec_helper'

describe "creating a new recipe", type: :feature do
  fixtures :users
  before :each do
    user = users(:stefan)

    visit '/login'
    fill_in 'Email', :with => user.email
    fill_in 'Password', :with => 'password'
    click_button 'Log in'

    Recipe.create(title: "Oma´s Eintopf", 
                  description: "Eintopf mit Kartoffeln und Würstchen",
                  creator_name: "Peter Pan",
                  category: "halal")
  end
  it "root page shows the recipes" do
    visit root_path
    expect(page).to have_content "Oma´s Eintopf"
  end
  it "new button goes to new Recipe page" do
    visit root_path
    #save_and_open_page
    click_link 'New'
    expect(page).to have_content "New Recipe"
  end
  it "creates a new recipe" do
    expect do
      visit new_recipe_path
      fill_in 'Title', with: 'Recipe created by test'
      fill_in 'Description', with: 'bla bla bla'
      fill_in 'Creator name', with: 'sdmnfmdsnf'
      select 'halal', from: "Category"
      click_button 'Create Recipe'
    end.to change{Recipe.count}.by(1)
  end

end