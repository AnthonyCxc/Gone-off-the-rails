class CreatePtoUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :pto_users do |t|

      t.timestamps
    end
  end
end
