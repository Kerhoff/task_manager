class AddIndexToStoryComments < ActiveRecord::Migration
  def change
    add_index :story_comments, :user_id
    add_index :story_comments, :story_id
  end
end
