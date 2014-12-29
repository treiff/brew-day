require 'rails_helper'

RSpec.describe DashboardController, :type => :controller do

  describe "GET index" do
    subject { page }

    it "returns http success" do
      get :index
      expect(response).to be_success
    end
  end
end
