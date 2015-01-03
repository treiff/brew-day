class PagesController < ApplicationController
  def index
    @users = User.all
    @hash = Gmaps4rails.build_markers(@users) do | user, marker |
      marker.lat user.latitude
      marker.lng user.longitude
      marker.title user.username
    end
    @total_brews = BrewSession.count
    render :layout => 'landing'
  end

  def contact
  end
end
