require 'rails_helper'

describe "Static Pages" do

  subject { page }
  
  describe "Home Page" do 
    before { visit root_path }

    it { should have_content('Who Brew') }
    it { should have_title(full_title('')) }
    it { should_not have_title('| Home') }
  end

  describe "Contact Page" do
    before { visit contact_path }

    it { should have_content('Contact') }
    it { should have_title(full_title('Contact')) }
  end
end
