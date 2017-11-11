class RemoveFieldNameFromProjectCauses < ActiveRecord::Migration[5.1]
  def change
    remove_column :project_causes, :fsp_id, :integer
  end
end
