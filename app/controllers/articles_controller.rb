class ArticlesController < ApplicationController
  
  def new
    @article = Article.new
  end
  
  def create
    #render plain: params[:article].inspect #there is no views page for this, we just want it to return
    @article = Article.new(article_params) #Added method article_params to white list the values of article
    @article.save #once article is saved it works but needs to what to do. We want to redirect to the articles_show view so we create that redirect
    redirect_to_articles_show(@article) #this will pass in the article
  end
  
  def show
    
  end
  
  private
    def article_params #this defines the article_params method created in def create
      params.require(:article).permit(:title, :description)
    end
  
end