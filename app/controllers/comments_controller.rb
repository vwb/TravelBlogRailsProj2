class CommentsController < ApplicationController
	def new
		@comment = Comment.new
	end

	def create
	  @comment = Comment.create(comment_params)
	  if @comment.save
	    redirect_to :back
	  else
	   render 'new'
	  end
    end

    private

    def comment_params
  		params.require(:comment).permit(:content)
  	end
end
