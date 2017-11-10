class ProjectCauseController < ApplicationController
	belongs_to: :admin_users
	has_many: :pto_tasks
end
