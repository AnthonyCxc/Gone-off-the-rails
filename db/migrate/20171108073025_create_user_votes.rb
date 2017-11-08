class CreateUserVotes < ActiveRecord::Migration[5.1]
  def change
    create_table :user_votes do |t|
    	t.integer :user_id, index: true, foreign_key: true
    	t.integer :cause_id, index: true, foreign_key: true
    	t.bigint :donation_amount, default: 1

      t.timestamps
    end
  end
end
