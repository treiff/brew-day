require 'rails_helper'

describe "Static Pages" do

  subject { page }

  describe "Home Page" do
    before { visit root_path }

    it { should have_content('BrewDay') }
    it { should have_title(full_title('')) }
    it { should_not have_title('| Home') }
  end

  describe "Contact Page" do
    before { visit contact_path }

    it { should have_content('Contact') }
    it { should have_title(full_title('Contact')) }
  end

  describe "Sign in page" do
    before { visit user_session_path }

    it { should have_content('Sign in') }
    it { should have_title(full_title('Sign-in')) }
  end

  describe "Sign up page" do
    before { visit new_user_registration_path }

    it { should have_content('Sign up') }
    it { should have_title(full_title('Sign-up')) }
  end

  describe "Edit profile page" do
    before { visit edit_user_registration_path }

    it { should have_content('Edit') }
    it { should have_title(full_title('Edit-profile')) }
  end
end
