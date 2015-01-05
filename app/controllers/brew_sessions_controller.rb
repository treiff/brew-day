class BrewSessionsController < ApplicationController
  before_filter :require_login

  def new
    @user = current_user
    @brew_session = BrewSession.new
  end

  def create
    @user = User.find(params[:user_id])
    @brew_session = @user.brew_sessions.create(brew_session_params)
    redirect_to user_brew_sessions_path
  end

  def index
    @user = User.find(params[:user_id])
    @brew_sessions = @user.brew_sessions
  end

  def edit
    @user = User.find(params[:user_id])
    @brew_session= @user.brew_sessions.find(params[:id])
  end

  def update
    @brew_session = BrewSession.find(params[:id])

    if @brew_session.update(brew_session_params)
      redirect_to user_brew_sessions_path(current_user)
    else
      render 'edit'
    end
  end

  private

  def brew_session_params
    params.require(:brew_session).permit(:style, :brewing_date, :public_private)
  end
end
