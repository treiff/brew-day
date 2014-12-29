class DashboardController < ApplicationController
  def index
    @nearby = User.near(current_user, 250)
  end
end
