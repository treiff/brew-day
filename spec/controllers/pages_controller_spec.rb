require 'rails_helper'

describe PagesController do
  describe "GET home" do
    it "returns http success" do
      get :index
      expect(response).to be_success
    end
  end

  describe "GET contact" do
    it "returns http success" do
      get :contact
      expect(response).to be_success
    end
  end
end
