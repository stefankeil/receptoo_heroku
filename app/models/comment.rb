class Comment < ActiveRecord::Base

	belongs_to :recipe
  # :user, :comment_text, :recipe
end
