class PtoTaskController < ApplicationController
	before_action :authenticate_user!, :except [:new]
	
	def new
		@pto_task = PtoTask.new
	end

	def edit
	end

	def show
		@pto_task = PtoTask.find(params[:id])
	end

	def update
		@pto_task = current_user.pto_task.new(pto_task_params)

		respond_to do |format|
      	if @pto_task.update(pto_task_params)
        	format.html { redirect_to @pto_task, notice: 'Task @pto_task.id was added!' }
        	format.json { render action: "show", status: :created, location: @pto_task }
      	else
        	format.html { render action: "edit" }
        	format.json { render json: @pto_task.errors, status: :unprocessable_entity }
      	end
	end

	def create
		@pto_task = current_user.pto_task.new(pto_task_params)
		@pto_task.save
	end

	private
		def pto_task_params
			params.require(:pto_tasks).permit(:project_id, :task_title, :task_description, 
				:task_owner_approval_status,:task_admin_approval_status,
				:task_owner_id,:admin_owner_id)
		end
end
