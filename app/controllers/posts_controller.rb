class PostsController < ApplicationController
  before_filter :authenticate_user!

  def new
	  @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
  end

  def create
	  @post = Post.create(post_params)
	  if @post.save
	    redirect_to root_path
	  else
	   render 'new'
	  end
  end

  def destroy
    @post = Post.find(params[:id])
    if @post.destroy
      redirect_to root_path
    else
      :back
    end
  end

  private

  def post_params
  	params.require(:post).permit(:title, :text, :country)
  end

end
