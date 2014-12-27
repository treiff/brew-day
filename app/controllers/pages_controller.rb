class PagesController < ApplicationController
  def home
    @users = User.all
    @hash = Gmaps4rails.build_markers(@users) do | user, marker |
      marker.lat user.latitude
      marker.lng user.longitude
      marker.title user.username
    end

    @closest = current_user.nearbys(4000)
  end

  #def closest
  #  @closest = current_user.nearbys(4000)
    #@distance =
  #end


  def contact
  end
end
