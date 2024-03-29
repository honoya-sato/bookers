class PostsController < ApplicationController
  def top
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def index
    @post = Post.new
    @posts = Post.all
  end

  def create
    post = Post.new(post_params)
    post.save
    flash[:notice] = "Book was successfully created."
    redirect_to post_path(post.id)
  end

  def update
    @post = Post.find(params[:id]) 
    @post.update(post_params)
    redirect_to post_path(@post.id)
    flash[:notice] = "Book was successfully updated."
  end
  def destroy
    ＠post = Post.find(params[:id])
    ＠post.destroy
    redirect_to posts_path
  end
  private
  def post_params
    params.require(:post).permit(:title, :body)
  end

end
