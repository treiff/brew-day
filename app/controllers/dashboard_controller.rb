class DashboardController < ApplicationController
  before_filter :require_login

  def index
    @nearby = User.near(current_user, 250)
  end

  def show
    @user = User.find(params[:id])
    @brew_sessions = @user.brew_sessions
  end
end
