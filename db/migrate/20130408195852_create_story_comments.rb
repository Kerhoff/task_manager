class CreateStoryComments < ActiveRecord::Migration
  def change
    create_table :story_comments do |t|
      t.text :content
      t.integer :user_id
      t.integer :story_id
      t.string :state
      
      t.timestamps
    end
  end
end
