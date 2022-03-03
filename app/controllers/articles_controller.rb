class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end
  def show
    @article = Article.find(params[:id])
    respond_to do |format|
      format.json { render :json => @article }
      format.html
    end
  end
end
