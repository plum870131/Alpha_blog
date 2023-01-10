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
        if @article.save
            # 利用flash的:notice功能跳出提示視窗
            # flash view template at app/vies/layouts/application
            flash[:notice] = "Article saved."

            # 結束動作後秀出該article
            # redirect_to article_path(@article) #article_path = "/article" 而:id以@article自己extract id
            redirect_to @article # 簡寫
        else
            render 'new' # render該controller內名為'new.html.erb'的模版
        end
    end

    def edit
        @article = Article.find(params[:id])
    end

    def update
        # byebug
        @article = Article.find(params[:id])
        if @article.update(params.require(:article).permit(:title, :descriptions))
            flash[:notice] = "Article updated"
            redirect_to @article
        else
            render "edit"
        end
    end

    def destroy


        @article = Article.find(params[:id])
        @article.destroy
        # 重新導向至listing page
        redirect_to articles_path
    end


end