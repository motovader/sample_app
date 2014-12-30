require 'spec_helper'

describe "Static Pages" do

  describe "Home Page" do
    it "should have the right h1 'Sample App'" do
      visit '/staticpages/home'
      page.should have_selector('h1', :text => 'Sample App')
    end
    it "should have the right title 'Home'" do
      visit '/staticpages/home'
      page.should have_selector('title', :text => 'Ruby on Rails Tutorial Sample App | Home')
    end
  end

  describe "Help Page" do
    it "should have the h1 'Help'" do
      visit '/staticpages/help'
      page.should have_selector('h1', :text => 'Help')
    end
    it "should have the right title 'Help'" do
      visit '/staticpages/help'
      page.should have_selector('title', :text => 'Ruby on Rails Tutorial Sample App | Help')
    end
  end

  describe "About Page" do
    it "should have the h1 'About Us'" do
      visit '/staticpages/about'
      page.should have_selector('h1', :text => 'About Us')
    end
    it "should have the right title 'About Us'" do
      visit '/staticpages/about'
      page.should have_selector('title', :text => 'Ruby on Rails Tutorial Sample App | About Us')
    end
  end

end
