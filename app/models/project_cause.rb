class ProjectCause < ApplicationRecord
	belongs_to :admin_users
	has_many :pto_tasks
end
