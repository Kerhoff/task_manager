class StoryComment < ActiveRecord::Base
  attr_accessible :content, :created_at, :state, :story_id, :user_id
end
