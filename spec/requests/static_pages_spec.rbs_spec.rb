require 'rails_helper'

describe "Static Pages" do
  
  describe "Home Page" do 
    it "should have the content 'Who Brew'" do
      visit '/pages/home'
      expect(page).to have_content('Who Brew')
    end

    it "should have the title 'Home'" do
      visit '/pages/home'
      expect(page).to have_title("Who Brew | Home")
    end
  end

  describe "About Page" do
    it "should have content 'About'" do
      visit '/pages/about'
      expect(page).to have_content('About')
    end

    it "should have the title 'About'" do
      visit '/pages/about'
      expect(page).to have_title("Who Brew | About")
    end
  end

  describe "Contact Page" do 
    it "should have content 'Contact'" do
      visit '/pages/contact'
      expect(page).to have_content('Contact')
    end

    it "should have the title 'Contact'" do
      visit '/pages/contact'
      expect(page).to have_title("Who Brew | Contact")
    end
  end
end
