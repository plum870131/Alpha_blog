class ArticlesController < ApplicationController

    def show
        @article = Article.find(params[:id])
    end

    def index
        @articles = Article.all
    end

    def new
        @article = Article.new
    end

    def create
        # strong parameters protecting db
        # using params.require.permit to filter out trash
        @article = Article.new(params.require(:article).permit(:title, :descriptions))
        render plain: @article
    end

end