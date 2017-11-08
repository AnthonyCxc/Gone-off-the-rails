class CreatePtoTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :pto_tasks do |t|

      t.timestamps
    end
  end
end
