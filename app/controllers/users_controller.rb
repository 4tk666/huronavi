class UsersController < ApplicationController 

  def show
    @user = User.find(params[:id])
    @nickname = @user.nickname
    @icon = @user.icon
    @review = @user.reviews.order("created_at DESC")
  end

end

