class ProjectCausesController < ApplicationController
	
	def index
		@project_causes = ProjectCause.all
		# @project_cause = current_user.project_cause_paths.all
		# @project_cause.save
	end

	def create
		@project_cause = ProjectCause.new(project_cause_params)
		# @project_cause.save
	end

	private
		def project_cause_params
			params.require(:project_cause).permit(:project_title, :project_description,:donation_goal, 
				:project_status, :pto_id, :admin_id, :country, :state_or_province, :address)
		end

end
