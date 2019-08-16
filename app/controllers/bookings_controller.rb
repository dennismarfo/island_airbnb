class BookingsController < ApplicationController
  def new
    @property = Property.find(params[:property_id])
    @booking = Booking.new
  end

  def create
    @property = Property.find(params[:property_id])
    @booking = Booking.new(booking_params)
    @booking.property = @property
    @booking.user_id = current_user[:id]
    if @booking.save
      redirect_to property_path(@property)
    else
      render :new
    end
  end

  def user_voyages_bookings
    @bookings = Booking.where(user: current_user).group_by(&:advancement)
    # @bookings = Booking.where(user: current_user).group_by {|booking| booking.advancement}
  end

  def user_properties_bookings
    @bookings = Booking.where(user: current_user).group_by(&:advancement)
  end

  private

  def booking_params
    params.require(:booking).permit(:check_in_date, :check_out_date, :total_price, :user_id, :message)
  end
end
