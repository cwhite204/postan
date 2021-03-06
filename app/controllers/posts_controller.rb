class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
  end

  private

  def post_params
    params.require(:post).permit(:content)
    redirect_to_posts_path
  end
end
