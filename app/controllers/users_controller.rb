class UsersController < ApplicationController
    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            flash[:notice] = "Welcome, #{@user.name}! Seccessfully sign up"
            redirect_to articles_path
        else
            render 'new' # render該controller內名為'new.html.erb'的模版
        end
    end

    def edit
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])
        if @user.update(user_params)
            flash[:notice] = "Profile updated"
            redirect_to articles_path
        else
            render 'edit'
        end
    end

    private 
    def user_params
        params.require(:user).permit(:name, :email, :password)
    end
end