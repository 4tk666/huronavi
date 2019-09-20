class ReviewsController < ApplicationController

  def index
  @review = Review.all.limit(4).order(id: "DESC")
  end

  def new
    @review = Review.new
    @review.photos.build
    @prefecture  = Prefecture.where.not(ancestry: nil)
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
        :prefecture_id ,
        photos_attributes:[:id,:image]
        ).merge(user_id: current_user.id) 
    end

end
