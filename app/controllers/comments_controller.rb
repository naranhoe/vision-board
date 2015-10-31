class CommentsController < ApplicationController

  def create
    @planningboard = Planningboard.find(params[:planningboard_id])
    @comment = @planningboard.comments.create(comment_params)
    redirect_to planningboard_path(@planningboard)
  end

  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
