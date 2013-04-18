# == Schema Information
#
# Table name: stories
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  content    :text
#  user_id    :integer
#  state      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Story < ActiveRecord::Base
  attr_accessible :content, :name, :state, :user_id
  has_many :story_comments, dependent: :destroy
  belongs_to :user
  
  
  validates :name, presence: true, length: { maximum: 50 }
  validates :content, presence: true
  validates :user_id, presence: true
  
  default_scope order: 'stories.created_at DESC'
end
