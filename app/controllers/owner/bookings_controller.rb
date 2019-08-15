class Owner::BookingsController < ApplicationController

  def index
    @bookings = xxxxxx
    # @bookings = Booking.where(user: current_user).group_by {|booking| booking.advancement}
  end

  private

  def booking_params
    params.require(:booking).permit(:check_in_date, :check_out_date, :total_price, :user_id)
  end
end
