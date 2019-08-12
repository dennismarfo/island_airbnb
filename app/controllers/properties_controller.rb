class PropertiesController < ApplicationController
  def index
    @properties = Property.all
  end

  def new

  end

  def create
  end
end
