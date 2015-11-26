require 'rails_helper'

RSpec.describe Comment, type: :model do
  
  describe 'A Comment model' do

    it 'reflects its own class' do
      com = Comment.new
      expect(com.class).to eql Comment
    end

    it 'has fields' do
      com = Comment.new(user: "Peter", comment_text: "Ich liebe Oma's Würstcheneintopf.")
      expect(com).to have_attributes(:user => "Peter", :comment_text => "Ich liebe Oma's Würstcheneintopf.")
    end

  end
end
