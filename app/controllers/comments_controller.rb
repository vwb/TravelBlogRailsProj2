class CommentsController < ApplicationController
	def new
		@comment = Comment.new
		@comment.post_id = params[:checkpost]
	end

	def create
	  @comment = Comment.create(comment_params)
	  @comment.user = current_user
	  #@comment.post = 
	  if @comment.save
	    redirect_to post_path(@comment.post)
	  else
	   render 'new'
	  end
    end

    private

    def comment_params
  		params.require(:comment).permit(:content, :post_id)
  	end
end
