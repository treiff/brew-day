require 'rails_helper'

describe "Static Pages" do
  
  describe "Home Page" do 
    it "should have the content 'Who Brew'" do
      visit '/pages/home'
      expect(page).to have_content('Who Brew')
    end

    it "should have the base title" do
      visit '/pages/home'
      expect(page).to have_title("Who Brew")
    end

    it "should not have custom page title" do
      visit '/pages/home'
      expect(page).not_to have_title('| Home')
    end
  end

  describe "About Page" do
    it "should have content 'Who Brew'" do
      visit '/pages/about'
      expect(page).to have_content('Who Brew')
    end

    it "should have the base title" do
      visit '/pages/about'
      expect(page).to have_title('Who Brew')
    end

    it "should not have custom page title" do
      visit '/pages/about'
      expect(page).not_to have_title('| About')
    end
  end

  describe "Contact Page" do 
    it "should have content 'Contact'" do
      visit '/pages/contact'
      expect(page).to have_content('Who Brew')
    end

    it "should have the base title" do
      visit '/pages/contact'
      expect(page).to have_title('Who Brew')
    end

    it "should not have custom page title" do
      visit '/pages/contact'
      expect(page).not_to have_title('| Contact')
    end
  end
end
