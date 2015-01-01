class BrewSessionsController < ApplicationController
  def index
    @user = User.find(params[:id])
    @brew_sessions = @user.brew_sessions.all
  end

  def show
    @brew_sessions = @user.brew_sessions.find(params[:id])
  end
end
