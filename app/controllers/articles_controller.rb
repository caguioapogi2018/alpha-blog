class ArticlesController < ApplicationController

  before_action :set_article, only: [:edit, :update, :show, :destroy]
  #ang value ng mga edit,update,show at destroy ay ito:
  #> @article = Article.find(params[:id])
  # dyan din ung naka based ung id nung article.
  #
  #

  def index
          @articles = Article.all
  end
  def new
          @article = Article.new
  end
  def create
          @article = Article.new(article_params)
            if @article.save
               flash[:notice] = "This article was successfully Created"
                redirect_to article_path(@article)
            else
              render 'new'
            end
  end
  def destroy
            @article.destroy
                  flash[:notice] = "This article was successfully Deleted"
                  redirect_to articles_path
  end
  def update
              if @article.update(article_params)
                  flash[:notice] = "This article was successfully Updated"
                   redirect_to article_path(@article)
              else
                  render 'edit'
              end
  end

  def show

  end
  def edit

  end

  private
  def set_article
            @article = Article.find(params[:id])
  end
  def article_params
            params.require(:article).permit(:title, :description)
  end





end