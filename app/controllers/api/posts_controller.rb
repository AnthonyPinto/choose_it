class Api::PostsController < ApplicationController
  def create 
    @post = Post.new(post_params)
    if @post.save
      render json: @post
    else
      render json: @post.errors, status: :unprocessable_entity
    end
  end
  
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    render json: @post
  end
  
  def show
    @post = Post.find(params[:id])
    render json: @post
  end
  
  def index
    @posts = Post.all
    render json: @posts
  end
  
  private
  
  def post_params
    params.require(:post).permit(:title, :body, :parent_id)
  end

end
