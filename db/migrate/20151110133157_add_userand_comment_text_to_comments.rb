class AddUserandCommentTextToComments < ActiveRecord::Migration
  def change
    add_column :comments, :user, :string
    add_column :comments, :comment_text, :text
  end
end
