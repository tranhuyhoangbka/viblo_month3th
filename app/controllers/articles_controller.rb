class ArticlesController < ApplicationController
  def index
    @articles = Article.all.order(:title)
  end

  def create
    @article = Article.new article_params
    if @article.save
    else
    end
  end

  private
  def article_params
    params.require(:article).permit :title, :body
  end
end
