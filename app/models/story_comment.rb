# == Schema Information
#
# Table name: story_comments
#
#  id         :integer          not null, primary key
#  content    :text
#  user_id    :integer
#  story_id   :integer
#  state      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class StoryComment < ActiveRecord::Base
  attr_accessible :content, :created_at, :state, :story_id, :user_id
end
