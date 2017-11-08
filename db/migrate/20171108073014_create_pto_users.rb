class CreatePtoUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :pto_users do |t|
    	t.string :email
    	t.integer :approved_by, index: true, foreign_key: true 
    	t.integer :user_id, index: true, foreign_key: true

      t.timestamps
    end
  end
end
