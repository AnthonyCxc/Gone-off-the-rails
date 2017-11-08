class CreateProjectCauses < ActiveRecord::Migration[5.1]
  def change
    create_table :project_causes do |t|
    	t.string :project_title
    	t.string :project_description
    	t.bigint :donation_goal
    	t.column :project_status, :integer, default: 0 #in model enum :project_status [pending: 0, approved: 1]
    	t.integer :pto_id, index: true, foreign_key: true #project task owner id
    	t.integer :admin_id, index: true, foreign_key: true #admin owner id
    	t.integer :fsp_id, index: true, foreign_key: true #financial service provider
      t.string :country
      t.string :state_or_province
      t.string :address

      t.timestamps
    end
  end
end
