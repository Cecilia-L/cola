class CommentsController < ApplicationController
  def create
    @comment=Comment.new(comment_params)
    @comment.post_id=params[:post_id]
    @comment.save

    redirect_to "/posts/#{params[:post_id]}"  
  end

  def destroy
  end

  def comment_params
    params.require(:comment).permit(:content)
  end
end
