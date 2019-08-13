class PropertiesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  def index
    # @properties = Property.all
  end

  def new
    @property = Property.new
  end

  def show
    @property = Property.find(params[:id])
  end

  def create
    @property = Property.new(property_params)
    @property.user = current_user
    if @property.save notice: 'Property was successfully created.'
      redirect_to property_path(@property)
    else
      render :new
    end
  end

  def edit
    @property = Property.find(params[:id])
  end

  private

  def property_params
    params.require(:property).permit(:name, :address, :country, :price, :description, :type, :photo_url)
  end
end
