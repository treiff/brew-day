class BrewSessionsController < ApplicationController
  before_filter :require_login

  def new
    @user = current_user
    @brew_session = BrewSession.new
  end

  def create
    @user = User.find(params[:user_id])
    @brew_session = @user.brew_sessions.create(brew_session_params)
    redirect_to dashboard_path(@user)
  end

  private

  def brew_session_params
    params.require(:brew_session).permit(:style, :brewing_date, :public_private)
  end
end
