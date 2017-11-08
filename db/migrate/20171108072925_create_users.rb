class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
    	t.string :name
    	t.string :email
    	t.string :password
    	t.string :address
    	t.column :gender,:integer, default: 3 # 3 = other, 1 = female , 2 = male
    	t.date :date_of_birth
    	t.column :pto_role,:integer, default: 0 # 0 = normal user, 1 = pto user
    	
    	t.timestamps
    end
  end
end
