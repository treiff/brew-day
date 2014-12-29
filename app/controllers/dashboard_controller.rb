class DashboardController < ApplicationController
  def index
    @nearby = User.near(current_user, 100)
  end
end
