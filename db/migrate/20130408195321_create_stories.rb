class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :name
      t.text :content
      t.integer :user_id
      t.string :state
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
