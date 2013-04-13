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

require 'test_helper'

class StoryCommentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
