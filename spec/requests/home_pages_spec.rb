require 'spec_helper'

describe "Home page" do
  subject { page }
    
  describe "index page" do
    before { visit root_path }
  
    it { should have_selector('h1', :text => 'Simple Task Manager') }
    it { should have_selector('title', :text => full_title('')) }
    it { should_not have_selector('title', :text => '| Home') }
  end
    
  describe "about page" do
    before { visit about_path }
  
    it { should have_selector('h1', :text => 'About') }
    it { should have_selector('title', :text => full_title('About')) }
  end
  
  describe "contacts page" do
    before { visit contacts_path }
  
    it { should have_selector('h1', :text => 'Contacts') }
    it { should have_selector('title', :text => full_title('Contacts')) }
  end
  
  describe "help page" do
    before { visit help_path }
  
    it { should have_selector('h1', :text => 'Help') }
    it { should have_selector('title', :text => full_title('Help')) }
  end
end
