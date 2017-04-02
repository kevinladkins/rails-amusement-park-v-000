class RidesController < ApplicationController

  def create
    ride = Ride.create(rides_params)
    flash[:alert] = ride.take_ride
    redirect_to user_path(ride.user_id)
  end


  private

  def rides_params
    params.require(:rides).permit(:attraction_id, :user_id)
  end
end
