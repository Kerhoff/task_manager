require 'spec_helper'

describe "Users pages" do
  subject { page }
  
  describe "GET /users" do
    before { visit users_path }
    
    it { should have_selector('h1', :text => 'Users') }
  end
  
  describe "GET /users/:id" do
    let(:user) { FactoryGirl.create(:user) }
    before { visit users_path(user) }
    
    it { should have_selector('h1', :text => user.name) }
  end
  
  describe "signup" do

    before { visit sign_up_path }
    
    it { should have_selector('h1', :text => 'New') }
    it { should have_selector('title', :text => full_title('SignUp')) }
    
    let(:submit) { "Sign Up!" }

    describe "with invalid information" do
      it "should not create a user" do
        expect { click_button submit }.not_to change(User, :count)
      end
    end

    describe "with valid information" do
      before do
        fill_in "Name",         with: "TestUser"
        fill_in "Email",        with: "user@test.com"
        fill_in "Password",     with: "test_test"
        fill_in "Password confirmation", with: "test_test"
      end

      it "should create a user" do
        expect { click_button submit }.to change(User, :count).by(1)
      end
      
      it { should have_link('Sign out') }
    end
  end
end
