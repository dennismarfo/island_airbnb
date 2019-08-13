class PropertiesController < ApplicationController
  def index
    @properties = Property.all
  end

  def new
    @property = Property.new
  end

  def create
    @property = Property.new(property_params)
    @property.user = current_user
    @property.save
    redirect_to property_path(@property)
  end

  private

  def property_params
    params.require(:property).permit(:name, :address, :country, :price, :description, :type, :photo_url)
  end
end
