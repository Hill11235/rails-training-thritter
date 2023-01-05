class UsersController < ApplicationController
    def show
        @user = User.find(params[:id])
    end

    def create
        @user = User.new(email: params['user']['email'], password: params['user']['password'], username: params['user']['username']).save
        redirect_to user_path(@user.id)
    end

    def new
        @user = User.new
    end

    # def new
    #     @article = Article.new
    #   end
    
    #   def create
    #     @article = Article.new(title: "...", body: "...")
    
    #     if @article.save
    #       redirect_to @article
    #     else
    #       render :new, status: :unprocessable_entity
    #     end
    #   end
end
