require 'spec_helper'

describe "Home page" do
  
  describe "index page" do
    it "shuold  have  the content 'Simple Task Manager'" do
      visit '/home/index'
      page.should have_selector('h1', :text => 'Simple Task Manager')
    end
    
    it "shuold  have  the title 'Task Manager | Home'" do
      visit '/home/index'
      page.should have_selector('title', :text => 'Task Manager | Home')
    end
  end
  
  describe "about page" do
    it "shuold  have  the content 'About'" do
      visit '/home/about'
      page.should have_selector('h1', :text => 'About')
    end
    
    it "shuold  have  the title 'Task Manager | About'" do
      visit '/home/about'
      page.should have_selector('title', :text => 'Task Manager | About')
    end
  end
end
