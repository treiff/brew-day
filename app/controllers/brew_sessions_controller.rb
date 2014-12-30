class BrewSessionsController < ApplicationController
  def show
    @session = BrewSession.find_by user_id: current_user.user_id
  end
end
