require 'spec_helper'

describe "StaticPages" do
  
  let(:site_title) {'Ruby on Rails Tutorial Sample App'}
  
  describe "Home page" do
    it "has the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end
    it "has the base title" do
      visit '/static_pages/home'
      expect(page).to have_title(site_title)
    end
    it "doesn't have a custom page title" do
      visit '/static_pages/home'
      expect(page).not_to have_title(' | Home')
    end
  end
  
  describe "Help page" do
    it "has the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end
    it "has the right title" do
      visit '/static_pages/help'
      expect(page).to have_title("#{site_title} | Help")
    end
  end
  
  describe "About page" do
    it "has the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end
    it "has the right title" do
      visit '/static_pages/about'
      expect(page).to have_title("#{site_title} | About Us")
    end
  end
  
  describe "Contact page" do
    it "has the content 'Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_content('Contact')
    end
    it "has the right title" do
      visit '/static_pages/contact'
      expect(page).to have_title("#{site_title} | Contact")
    end
  end
  
end