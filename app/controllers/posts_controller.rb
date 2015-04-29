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
    @post.user = current_user
    @post.like = 0;
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

  def like_post
    @post = Post.find(params[:id])
    @post.like += 1
    if @post.save
      redirect_to post_path(params[:id])
    end
  end


  private

  def post_params
  	params.require(:post).permit(:title, :text, :place)
  end

end
