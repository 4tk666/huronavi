class ReviewsController < ApplicationController
  before_action :review_find_id ,only: [:show,:edit,:update,:destroy]

  def index
    @review = Review.all.limit(9).order(id: "DESC") 
    @categories = Category.all
    @q = Review.ransack(params[:q])
    @category =  @q.result(distinct: true).includes(:category)
  end

  def new
    @review = Review.new
    @prefecture  = Prefecture.where.not(ancestry: nil)
    @review.photos.build
    @review.category_reviews.build
    @categories = Category.all
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
    @user = User.find_by(id: @review.user_id)
  end

  def edit
    @prefecture  = Prefecture.where.not(ancestry: nil)
  end

  def update
    if @review.update(review_params)
      redirect_to root_path
    else
      redirect_to edit_review_path(@review)
    end
  end

  def destroy
    @review.destroy
    redirect_to root_path
  end

  def prefecture
    @prefecture = Prefecture.find(params[:prefecture_id])
    @reviews = @prefecture.reviews.order(created_at: :desc).all
  end
  
  def category
    @category = Category.find(params[:category_id])
    @category_review = @category.reviews.order(created_at: :desc).all
  end

  def  search
    @q = Review.search(search_params)
    @category = @q.result(distinct: true)
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
        :rate,
        photos_attributes:[:id,:image],
        category_reviews_attributes:[:id,:category_id]
        ).merge(user_id: current_user.id) 
    end

    def search_params
      params.require(:q).permit(:category_id_in)
    end

    def review_find_id
      @review = Review.find(params[:id])
    end

end