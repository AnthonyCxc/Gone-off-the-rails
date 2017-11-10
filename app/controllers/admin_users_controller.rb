class AdminUserController < ApplicationController
	has_many: :pto_users
	has_many: :users
	has_many: :pto_tasks
	has_many: :project_causes
end
