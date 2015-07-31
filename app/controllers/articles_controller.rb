class ArticlesController < ApplicationController

  def index

  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(artice_params)
    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end

  private

    def article_params
      params.require(:article).permit(:title, :content)
    end
end
