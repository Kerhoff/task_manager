class Story < ActiveRecord::Base
  attr_accessible :content, :created_at, :name, :state, :updated_at, :user_id
end
