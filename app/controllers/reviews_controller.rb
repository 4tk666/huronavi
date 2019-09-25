class ReviewsController < ApplicationController
  before_action :review_find_id ,only: [:show,:edit,:update,:destroy]
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

  def show
    @comment = Comment.new
    @comments = @review.comments.includes(:user)
    @user = User.all
  end

  def edit
  end

  def update
  end

  def destroy
    @review.destroy
    redirect_to root_path
  end

  private
    def review_params
      params.require(:review).permit(
        :title,
        :text,
        :address,
        :price,
        :access,
        :holiday,
        :bath_time,
        :prefecture_id ,
        photos_attributes:[:id,:image]
        ).merge(user_id: current_user.id) 
    end

    def review_find_id
      @review = Review.find(params[:id])
    end

end
