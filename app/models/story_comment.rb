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
  belongs_to :user
  belongs_to :story
  
  validates :user_id, presence: true
  validates :story_id, presence: true
  validates :content, presence: true
  
  default_scope order: 'story_comments.created_at DESC'
end
