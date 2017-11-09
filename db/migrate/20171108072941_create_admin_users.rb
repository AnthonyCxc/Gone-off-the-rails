class CreateAdminUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :admin_users do |t|
    	t.string :admin_name
    	t.string :password

      t.timestamps
    end
  end
end
