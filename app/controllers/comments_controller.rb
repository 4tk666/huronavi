class CommentsController < ApplicationController

  def create 
    @comment = Comment.new(comment_parmas) 
    @comment.save
    respond_to do |format|
      format.html { redirect_to review_path(params[:review_id])  }
      format.json
    end
  end
  
  private 
    def comment_parmas
      params.require(:comment).permit(:text).merge(user_id: current_user.id ,review_id: params[:review_id])
    end
end
