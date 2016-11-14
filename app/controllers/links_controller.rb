class LinksController < ApplicationController
	def index
		@links = Link.all
	end
	def new
		@links = Link.new
		
	end
	def create
		@links = Link.new(link_params)
		@links.save
		redirect_to root_path
	end
	def show
		@links = Link.find(params[:id])
	end
	private
	def link_params
		params.require(:link).permit(:title, :post)
	end
end
