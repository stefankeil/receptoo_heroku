require 'rails_helper'

describe "search for a recipe", type: :feature do
  before :each do
    recipe = Recipe.create(title: "Tony´s Süppchen", 
                           description: "Suppe mit Kartoffeln und Würstchen",
                           creator_name: "Tony",
                           category: "soup")
  end

  it "the search form is present" do
    visit root_path

    expect(page).to have_selector('#search-form')
  end

  it "the search button links to the recipe index page", :js => true do
    visit root_path

    page.execute_script("$('#search-form').submit()")
    expect(page).to have_content "Listing Recipes"
  end
  
  # it "shows results when result are found by querying", :js => true do
  #   visit root_path

  #   fill_in 'search', with: 'Süppchen'
  #   page.execute_script("$('#search-form').submit()")
  #   # page.save_screenshot('screenshot.png')
  #   expect(page).to have_content "Tony"
  # end

end