require 'spec_helper'

describe "Users" do
  subject { page }
    
  describe "GET /users" do
    before { visit users_path }
    
    it { should have_selector('h1', :text => 'Users') }
  end
  
  describe "GET /sign_up" do
    before { visit sign_up_path }
    
    it { should have_selector('h2', :text => 'Please Sign Up') }
    it { should have_selector('title', :text => full_title('Sign Up')) }
  end
  
  describe "GET /users/:id" do
    let(:user) { FactoryGirl.create(:user) }
    before { visit users_path(user) }
    
    it { should have_selector('h1', :text => user.name) }
  end
  
  describe "signup" do

    before { visit sign_up_path }

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
        fill_in "Confirmation", with: "test_test"
      end

      it "should create a user" do
        expect { click_button submit }.to change(User, :count).by(1)
      end
    end
  end
end
