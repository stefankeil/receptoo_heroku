require 'rails_helper'

describe "login proccess", type: :feature do
	fixtures :users

	it 'logout appears when user is logged in' do
		user = users(:stefan)
		visit root_path

		visit '/login'
    fill_in 'Email', :with => user.email
    fill_in 'Password', :with => 'password'
    click_button 'Log in'

		expect(page).to have_content "Log out"
	end

	it 'login page is shown if user is not logged in' do
		visit root_path

		expect(page).to have_content "Log in"
	end
end