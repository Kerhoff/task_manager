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

require 'spec_helper'

describe Story do
  
  let(:user) { FactoryGirl.create(:user) }
  before do
    @story = Story.new(name: "Test Story", content: "First Story in Task Manager", user_id: user.id, state: "new", )
  end

  subject { @story }

  it { should respond_to(:name) }
  it { should respond_to(:content) }
  it { should respond_to(:user_id) }
  it { should respond_to(:state) }
  
  it { should be_valid }

  describe "when user_id is not present" do
    before { @story.user_id = nil }
    it { should_not be_valid }
  end
end
