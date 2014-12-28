class DashboardController < ApplicationController
  def index
    @current_user = current_user
    @nearby = User.near(current_user, 100)
  end
end
