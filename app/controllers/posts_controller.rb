class PostsController < ApplicationController

    def show
        @post = Post.find(params[:id])
    end

    def index
        Post.all
    end

    def create
        binding.irb
        @post = Post.new(text: params['post']['text'], user_id: params[:user_id]).save
        redirect_to post_path(@post.id)
    end

    def new
        @post = Post.new
    end

end