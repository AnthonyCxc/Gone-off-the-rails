class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
<<<<<<< HEAD:db/migrate/20171108043417_create_users.rb
    	t.string :name
    	t.string :email
    	t.string :password
    	t.string :address
    	t.column :gender :integer, default: 3 # 3 = other, 1 = female , 2 = male
    	t.date :date_of_birth
    	t.column :pto_role :integer, default: 0 # 0 = normal user, 1 = pto user
    	
    	t.timestamps
=======

      t.timestamps
>>>>>>> 9ace36bf11fa4fe5fdaeb3d5bccc446cc3b90f59:db/migrate/20171108072925_create_users.rb
    end
  end
end
