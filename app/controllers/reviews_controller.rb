class ReviewsController < ApplicationController

  def index
  @review = Review.all
  end

  def new
    @review = Review.new
    @review.photos.build
  end

  def create
    @review = Review.new(review_params)
      if  @review.save
        redirect_to root_path
      else 
        render "new"
      end
  end

  private
    def review_params
      params.require(:review).permit(
        :title,
        :text,
        photos_attributes:[:id,:image]
        ).merge(user_id: current_user.id) 
    end

end
