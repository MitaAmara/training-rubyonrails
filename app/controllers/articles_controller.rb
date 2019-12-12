class ArticlesController < ApplicationController
  #before_action :check_current_user, only: [:new, :create, :edit, :update, :destroy]

  def index
  	@articles = Article.page(params[:page]).per(5)
    respond_to do |format|
      if params[:search].present?
        format.js {
          @articles = Article.where("title like ? or content like ?", "%#{params[:search]}%", 
            "%#{params[:search]}%").page(params[:page]).per(5) 
        }
        format.html
      else
        format.html
      end
    end
  end

  def new
  	@article = Article.new
  end

  def edit
  	@article = Article.find_by_id(params[:id])
  end

  def show
  	@article = Article.find_by_id(params[:id])
    @comments = @article.comments.order("id desc")
    @comment = Comment.new
  end

  def create
  	@article = Article.new(params_article)
  	if @article.save
  		flash[:success] = "Success Add Record"
  		redirect_to action: 'index'
  	else
  		flash[:error] = "Data Not Valid"
  		render 'new'
  	end
  end

  def update
  	@article = Article.find_by_id(params[:id])
  	if @article.update(params_article)
  		flash[:success] = "Success Update Record"
  		redirect_to action: 'index'
  	else
  		flash[:error] = "Data Not Valid"
  		render 'edit'
  	end
  end

  def destroy
  	@article = Article.find_by_id(params[:id])
  	if @article.destroy
  		flash[:success] = "Success Delete Record"
  		redirect_to action: 'index'
  	else
  		flash[:error] = "Failed Delete Record"
  		redirect_to action: 'index'
  	end
  end

  private
  def params_article
  	params.require(:article).permit(:title, :content, :status)
  end
end
