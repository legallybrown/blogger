class ArticlesController < ApplicationController

  include ArticlesHelper

  def index 
    @articles = Article.all 
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new 
  end

  def create
    @article = Article.new(article_params)
    @article.save

    flash.notice = "Article with the title '#{@article.title}' has been created!"

    redirect_to article_path(@article)
  end

  def edit
    @article = Article.find(params[:id]) 
  end

  def update
    @article = Article.find(params[:id])
    @article.update(article_params)

    flash.notice = "Article with the title '#{@article.title}' has been updated!"

    redirect_to article_path(@article)

  end   


  def destroy
    @article = Article.destroy(params[:id])
    flash.notice = "The article '#{@article.title}' has been banished"

    redirect_to articles_path
  end 

end
