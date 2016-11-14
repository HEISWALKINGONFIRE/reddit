class CommentsController < ApplicationController
	def new
		@comment = Comment.new
	end

	def create
		@comments = Comment.new
		@comments.save
		redirect_to comment_path
		
	end
	private
	def comments_parmas
		params.require(:comment).permit(:body)
		
	end
end
