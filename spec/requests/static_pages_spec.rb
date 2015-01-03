require 'spec_helper'

describe "Static Pages" do

  describe "Home Page" do
    it "should have the right h1 'Sample App'" do
      visit root_path
      page.should have_selector('h1', :text => 'Sample App')
    end
    it "should have the right title 'Home'" do
      visit root_path
      page.should have_selector('title', :text => 'Ruby on Rails Tutorial Sample App')
    end
  end

  describe "Help Page" do
    it "should have the h1 'Help'" do
      visit help_path
      page.should have_selector('h1', :text => 'Help')
    end
    it "should have the right title 'Help'" do
      visit help_path
      page.should have_selector('title', :text => 'Ruby on Rails Tutorial Sample App')
    end
  end

  describe "About Page" do
    it "should have the h1 'About Us'" do
      visit about_path
      page.should have_selector('h1', :text => 'About Us')
    end
    it "should have the right title 'About Us'" do
      visit about_path
      page.should have_selector('title', :text => 'Ruby on Rails Tutorial Sample App')
    end
  end

  describe "Contacts Page" do
    it "should have the h1 'Contacts'" do
      visit contacts_path
      page.should have_selector('h1', :text => 'Contacts')
    end
    it "should have the right title 'Contacts'" do
      visit contacts_path
      page.should have_selector('title', :text => 'Ruby on Rails Tutorial Sample App')
    end
  end

end
