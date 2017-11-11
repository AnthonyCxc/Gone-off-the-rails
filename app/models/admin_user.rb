class AdminUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :pto_users
  has_many :users
  has_many :pto_tasks
  has_many :project_causes

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
