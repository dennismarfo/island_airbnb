class ReviewsController < ApplicationController
  def new
    @property = Property.find(params[:property_id])
    @review = Review.new
  end

  def create
    @property = Property.find(params[:property_id])
    @review = Review.new(review_params)

    @review.property = @property
    if @review.save
      redirect_to property_path(@property)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
