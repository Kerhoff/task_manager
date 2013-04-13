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
  attr_accessible :content, :created_at, :name, :state, :updated_at, :user_id
end
