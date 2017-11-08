class ListingController < ApplicationController

	def index
		@listings = ProjectCause.where(project_status: 0)
	end

	def new
	end

	def show
	end

end
