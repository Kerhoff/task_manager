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

require 'spec_helper'

describe StoryComment do
  
  let(:user) { FactoryGirl.create(:user) }
  let(:story) { FactoryGirl.create(:story) }
  
  before do
    @story = StoryComment.new(content: "First Story Comment", user_id: user.id, story_id: story.id)
  end

  subject { @story_comment }

  it { should respond_to(:story_id) }
  it { should respond_to(:content) }
  it { should respond_to(:user_id) }
  it { should respond_to(:state) }
  
  it { should be_valid }

  describe "when user_id is not present" do
    before { @story_comment.user_id = nil }
    it { should_not be_valid }
  end
  
  describe "when stroy_id is not present" do
    before { @story_comment.story_id = nil }
    it { should_not be_valid }
  end
end
