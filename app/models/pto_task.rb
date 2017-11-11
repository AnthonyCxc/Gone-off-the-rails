class PtoTask < ApplicationRecord
	belongs_to :project_causes
	has_many :pto_users
	has_many :admin_users
end
