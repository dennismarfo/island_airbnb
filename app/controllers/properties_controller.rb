class PropertiesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @properties = Property.all
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

  def destroy
    @property = Property.find(params[:id])
    @property.destroy

    # no need for app/views/restaurants/destroy.html.erb
    redirect_to properties_path
  end

  private

  def property_params
    params.require(:property).permit(:name, :address, :country, :price, :description, :category, :photo)
  end
end
