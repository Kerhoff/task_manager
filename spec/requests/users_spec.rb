require 'spec_helper'

describe "Users" do
  subject { page }
    
  describe "GET /users" do
    before { visit users_path }
    
    it { should have_selector('h1', :text => 'Users') }
  end
  
  describe "GET /sign_up" do
    before { visit sign_up_path }
    
    it { should have_selector('h1', :text => 'Sign Up') }
    it { should have_selector('title', :text => full_title('Sign Up')) }
  end
end
