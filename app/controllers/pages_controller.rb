class PagesController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def home
  	@users = User.all
  	@posts = Post.all
  end

  def about
  end
  
end
