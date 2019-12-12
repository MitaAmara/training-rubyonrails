class CommentsController < ApplicationController
  def create
    @article = Article.find(params[:article_id])
	@comment = @article.comments.create(params_comment)
    if @comment.save
	  flash[:success] = "Success Add Record"
	  redirect_to article_path(@article)
    else
	  flash[:error] = "Data not valid"
	  redirect_to article_path(@article)
    end
   end

  private
  def params_comment
    params.require(:comment).permit(:article_id, :user_id, :content, :status, :commenter)
  end
end