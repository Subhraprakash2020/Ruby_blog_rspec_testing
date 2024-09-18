class CommentsController < ApplicationController
  def create
    @doc = Article.find(params[:doc_id])
    @comment = @doc.comments.create(comment_params)
    redirect_to doc_path(@doc)
  end

  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
