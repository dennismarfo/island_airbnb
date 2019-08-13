class BookingsController < ApplicationController
  def new
    @property = Property.find(params[:property_id])
    @booking = Booking.new
  end

  def create
    @property = Property.find(params[:property_id])
    @booking = Booking.new(booking_params)

    @booking.property = @property
    if @booking.save
      redirect_to property_path(@property)
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:check_in_date, :check_out_date, :total_price)
  end
end
