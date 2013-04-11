require 'spec_helper'

describe "Home page" do
  describe "index page" do
    it "shuold  have  the content 'Simple Task Manager'" do
      visit '/home/index'
      page.should have_content('Simple Task Manager')
    end
  end
end
