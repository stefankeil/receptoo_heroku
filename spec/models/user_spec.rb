require 'rails_helper'

RSpec.describe User, type: :model do
	user = User.new
	describe 'A User Class' do
		it 'reflects it´s own Class' do
			expect(user.class).to eql User
		end

		it 'validate the presence of a valid user object' do
			usr = User.create(name: "Example User", email: "user.com",
                     password: "foobar", password_confirmation: "foobar")
		end

	end
  
end
