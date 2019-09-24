class CommentsController < ApplicationController

  def create 
    @comment = Comment.new(comment_parmas) 
    binding.pry
    @comment.save
    redirect_to root_path
  end
  private 
    def comment_parmas
      params.require(:comment).permit(:text).merge(user_id: current_user.id ,review_id: params[:review_id])
    end
end
