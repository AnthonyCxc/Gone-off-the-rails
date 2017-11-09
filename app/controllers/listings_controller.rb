class ListingsController < ApplicationController

	def index
		@listings = ProjectCause.where(project_status: 0)
	end

	def new	
	end

	def show
		# byebug
		@listing = ProjectCause.find(params[:id])
	end

	private

	def listing_params
	 	params.require(:projectcause).permit(:project_title, :project_discription, :donation_goal, :project_status)
	end
end
