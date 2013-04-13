require 'spec_helper'

describe "Home page" do
  
  describe "index page" do
    it "shuold  have  the content 'Simple Task Manager'" do
      visit root_path
      page.should have_selector('h1', :text => 'Simple Task Manager')
    end
    
    it "shuold  have  the title 'Task Manager | Home'" do
      visit root_path
      page.should have_selector('title', :text => ' | Home')
    end
  end
  
  describe "about page" do
    it "shuold  have  the content 'About'" do
      visit about_path
      page.should have_selector('h1', :text => 'About')
    end
    
    it "shuold  have  the title 'Task Manager | About'" do
      visit about_path
      page.should have_selector('title', :text => 'Task Manager | About')
    end
  end
  
  describe "contacts page" do
    it "shuold  have  the content 'Contacts'" do
      visit contacts_path
      page.should have_selector('h1', :text => 'Contacts')
    end
    
    it "shuold  have  the title 'Task Manager | Contacts'" do
      visit contacts_path
      page.should have_selector('title', :text => 'Task Manager | Contacts')
    end
  end
  
  describe "help page" do
    it "shuold  have  the content 'Help'" do
      visit help_path
      page.should have_selector('h1', :text => 'Help')
    end
    
    it "shuold  have  the title 'Task Manager | Help'" do
      visit help_path
      page.should have_selector('title', :text => 'Task Manager | Help')
    end
  end
end
