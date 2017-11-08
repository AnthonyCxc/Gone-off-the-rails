class CreatePtoTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :pto_tasks do |t|
    	t.integer :project_id, index: true, foreign_key: true
    	t.string :task_title
    	t.string :task_description
    	t.column :task_owner_approval_status, :integer, default: 0 #in model enum :task_owner_approval_status [pending: 0, approved: 1]
    	t.column :task_admin_approval_status, :integer, default: 0 #in model enum :task_admin_approval_status [pending: 0, approved: 1]
    	t.integer :task_owner_id, index: true, foreign_key: true
    	t.integer :admin_owner_id, index: true, foreign_key: true

      t.timestamps
    end
  end
end
